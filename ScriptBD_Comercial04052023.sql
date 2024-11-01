USE [comercial]
GO
/****** Object:  User [mqr]    Script Date: 04/05/2024 6:39:47 AM ******/
CREATE USER [mqr] FOR LOGIN [mqr] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 04/05/2024 6:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[cli_cedula] [varchar](13) NOT NULL,
	[cli_apellidos] [varchar](50) NOT NULL,
	[cli_nombres] [varchar](50) NOT NULL,
	[cli_direccion] [varchar](150) NOT NULL,
	[cli_telefono] [varchar](10) NULL,
	[cli_email] [varchar](50) NULL,
	[cli_obser] [varchar](100) NULL,
	[cli_estado] [varchar](10) NOT NULL,
	[cli_fechamod] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cli_cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compras_cab]    Script Date: 04/05/2024 6:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras_cab](
	[com_numero] [int] IDENTITY(1,1) NOT NULL,
	[com_fecha] [datetime] NOT NULL,
	[com_tipo] [int] NULL,
	[pro_ciruc] [nvarchar](13) NOT NULL,
	[com_subtotal] [decimal](18, 0) NOT NULL,
	[com_descuento] [decimal](18, 0) NOT NULL,
	[com_impuesto] [decimal](18, 0) NOT NULL,
	[com_total] [decimal](18, 0) NOT NULL,
	[com_total_letras] [nvarchar](500) NULL,
	[com_campo1] [nvarchar](50) NULL,
	[com_campo2] [nvarchar](50) NULL,
	[com_estado] [nvarchar](50) NULL,
 CONSTRAINT [PK_Compras_cab] PRIMARY KEY CLUSTERED 
(
	[com_numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compras_det]    Script Date: 04/05/2024 6:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras_det](
	[com_numero] [int] NOT NULL,
	[pro_codigp] [int] NOT NULL,
	[com_cantidad] [decimal](18, 0) NULL,
	[com_precio] [decimal](18, 0) NULL,
	[com_campo1] [nvarchar](50) NULL,
	[com_estado] [nvarchar](50) NULL,
 CONSTRAINT [PK_Compras_det] PRIMARY KEY CLUSTERED 
(
	[com_numero] ASC,
	[pro_codigp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factura_cab]    Script Date: 04/05/2024 6:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factura_cab](
	[fac_numero] [int] NOT NULL,
	[fac_tipo] [varchar](2) NOT NULL,
	[cli_ciruc] [varchar](13) NOT NULL,
	[fac_fecha] [datetime] NOT NULL,
	[fac_subtotal] [decimal](18, 4) NOT NULL,
	[fac_descuento] [decimal](15, 4) NOT NULL,
	[fac_impuesto] [decimal](15, 4) NOT NULL,
	[fac_total] [decimal](15, 4) NOT NULL,
	[fac_estado] [varchar](5) NOT NULL,
 CONSTRAINT [PK_factura_cab] PRIMARY KEY CLUSTERED 
(
	[fac_numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factura_det]    Script Date: 04/05/2024 6:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factura_det](
	[fac_numero] [int] NOT NULL,
	[pro_codigo] [int] NOT NULL,
	[fac_cantidad] [decimal](15, 4) NOT NULL,
	[fac_precio] [decimal](15, 4) NOT NULL,
	[fac_estado] [varchar](80) NOT NULL,
 CONSTRAINT [PK__factura___D6022E5A6C12FEE2] PRIMARY KEY CLUSTERED 
(
	[fac_numero] ASC,
	[pro_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instalacione]    Script Date: 04/05/2024 6:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instalacione](
	[ins_codigo] [int] NOT NULL,
	[ins_fecha_instalacion] [datetime] NULL,
	[cli_cedula] [nvarchar](255) NULL,
	[ins_costo_instalacion] [float] NULL,
	[ins_mensual] [float] NULL,
	[ins_fecha_actual] [datetime] NULL,
	[ins_dias_servicio] [float] NULL,
	[ins_password_wifi] [nvarchar](255) NULL,
	[ins_ip_antena_wan] [nvarchar](255) NULL,
	[ins_login_antena] [nvarchar](255) NULL,
	[ins_password_antena] [nvarchar](255) NULL,
	[ins_ip_wan_router] [nvarchar](255) NULL,
	[ins_login_router] [nvarchar](50) NULL,
	[ins_password_router] [nvarchar](255) NULL,
	[ins_ip_access_point] [nvarchar](255) NULL,
	[ins_estado] [nvarchar](255) NULL,
	[ins_descripcion_antena] [nvarchar](255) NULL,
	[ins_observaciones] [nvarchar](255) NULL,
	[ins_fecha_creacion] [nvarchar](255) NULL,
	[ins_fecha_mod] [nvarchar](255) NULL,
 CONSTRAINT [PK_Instalacione] PRIMARY KEY CLUSTERED 
(
	[ins_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[marcas]    Script Date: 04/05/2024 6:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[marcas](
	[mar_codigo] [int] IDENTITY(1,1) NOT NULL,
	[mar_descripcion] [varchar](50) NOT NULL,
	[mar_modelo] [varchar](50) NOT NULL,
	[mar_estado] [varchar](10) NOT NULL,
 CONSTRAINT [PK_marcas] PRIMARY KEY CLUSTERED 
(
	[mar_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mensualidades]    Script Date: 04/05/2024 6:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mensualidades](
	[men_codigo] [int] IDENTITY(1,1) NOT NULL,
	[ins_codigo] [int] NOT NULL,
	[cli_cedula] [varchar](13) NOT NULL,
	[men_fechadesde] [varchar](50) NOT NULL,
	[men_fechahasta] [varchar](50) NOT NULL,
	[men_cuota] [decimal](18, 0) NOT NULL,
	[men_estado] [varchar](10) NOT NULL,
	[men_fechamod] [date] NULL,
	[men_fechacrea] [date] NULL,
	[fac_numero] [int] NULL,
 CONSTRAINT [PK__mensuali__409BBDECF2400D03] PRIMARY KEY CLUSTERED 
(
	[men_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movimientos]    Script Date: 04/05/2024 6:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movimientos](
	[mov_id] [int] NOT NULL,
	[mov_nombre] [varchar](50) NOT NULL,
	[mov_fecha] [datetime] NOT NULL,
	[mov_cantidad] [decimal](15, 4) NOT NULL,
	[mov_costo] [decimal](15, 4) NOT NULL,
	[mov_campo1] [varchar](50) NULL,
	[mov_campo2] [varchar](50) NULL,
	[mov_campo3] [varchar](50) NULL,
	[mov_observaciones] [varchar](50) NULL,
	[mov_estado] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[mov_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 04/05/2024 6:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[pro_codigo] [int] NOT NULL,
	[pro_descripcion] [varchar](50) NOT NULL,
	[mar_codigo] [int] NOT NULL,
	[pro_modelo] [varchar](30) NULL,
	[pro_imei] [varchar](15) NULL,
	[pro_obser] [varchar](150) NULL,
	[pro_estado] [varchar](10) NOT NULL,
	[pro_fechamod] [datetime] NOT NULL,
	[pro_precio] [decimal](15, 4) NOT NULL,
	[pro_unidad] [varchar](10) NOT NULL,
 CONSTRAINT [PK__producto__25CC172EAC2EFD9A] PRIMARY KEY CLUSTERED 
(
	[pro_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 04/05/2024 6:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedores](
	[prov_ciruc] [varchar](13) NOT NULL,
	[prov_apellidos] [varchar](50) NOT NULL,
	[prov_nombres] [varchar](50) NOT NULL,
	[prov_razonsocial] [varchar](100) NOT NULL,
	[prov_direccion] [varchar](200) NOT NULL,
	[prov_telefono] [varchar](10) NULL,
	[prov_celular] [varchar](25) NULL,
	[prov_email] [varchar](50) NOT NULL,
	[prov_fpago] [varchar](30) NOT NULL,
	[prov_fcreacion] [datetime] NULL,
	[prov_fmodif] [datetime] NULL,
	[usu_cedula] [varchar](10) NOT NULL,
	[prov_campo4] [varchar](50) NULL,
	[prov_campo5] [varchar](50) NULL,
	[prov_observaciones] [varchar](300) NULL,
	[prov_estado] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[prov_ciruc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[saldo_producto]    Script Date: 04/05/2024 6:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[saldo_producto](
	[sal_id] [int] NOT NULL,
	[pro_codigo] [int] NOT NULL,
	[sal_fecha] [datetime] NOT NULL,
	[mov_id] [int] NOT NULL,
	[sal_producto] [decimal](15, 4) NOT NULL,
	[sal_estado] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 04/05/2024 6:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[usu_cedula] [varchar](10) NOT NULL,
	[usu_login] [varchar](10) NOT NULL,
	[usu_pass] [varchar](20) NOT NULL,
	[usu_obser] [varchar](50) NULL,
	[usu_estado] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[usu_cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[clientes] ADD  DEFAULT (NULL) FOR [cli_telefono]
GO
ALTER TABLE [dbo].[clientes] ADD  DEFAULT (NULL) FOR [cli_email]
GO
ALTER TABLE [dbo].[clientes] ADD  DEFAULT (NULL) FOR [cli_obser]
GO
ALTER TABLE [dbo].[clientes] ADD  DEFAULT (getdate()) FOR [cli_fechamod]
GO
ALTER TABLE [dbo].[factura_cab] ADD  CONSTRAINT [DF__factura_c__fac_f__2A4B4B5E]  DEFAULT (getdate()) FOR [fac_fecha]
GO
ALTER TABLE [dbo].[movimientos] ADD  DEFAULT (NULL) FOR [mov_campo1]
GO
ALTER TABLE [dbo].[movimientos] ADD  DEFAULT (NULL) FOR [mov_campo2]
GO
ALTER TABLE [dbo].[movimientos] ADD  DEFAULT (NULL) FOR [mov_campo3]
GO
ALTER TABLE [dbo].[movimientos] ADD  DEFAULT (NULL) FOR [mov_observaciones]
GO
ALTER TABLE [dbo].[productos] ADD  CONSTRAINT [DF__productos__pro_o__17036CC0]  DEFAULT (NULL) FOR [pro_obser]
GO
ALTER TABLE [dbo].[productos] ADD  CONSTRAINT [DF__productos__pro_f__17F790F9]  DEFAULT (getdate()) FOR [pro_fechamod]
GO
ALTER TABLE [dbo].[proveedores] ADD  DEFAULT (NULL) FOR [prov_telefono]
GO
ALTER TABLE [dbo].[proveedores] ADD  DEFAULT (NULL) FOR [prov_celular]
GO
ALTER TABLE [dbo].[proveedores] ADD  DEFAULT (NULL) FOR [prov_fcreacion]
GO
ALTER TABLE [dbo].[proveedores] ADD  DEFAULT (NULL) FOR [prov_fmodif]
GO
ALTER TABLE [dbo].[proveedores] ADD  DEFAULT (NULL) FOR [prov_campo4]
GO
ALTER TABLE [dbo].[proveedores] ADD  DEFAULT (NULL) FOR [prov_campo5]
GO
ALTER TABLE [dbo].[proveedores] ADD  DEFAULT (NULL) FOR [prov_observaciones]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT (NULL) FOR [usu_obser]
GO
ALTER TABLE [dbo].[Compras_cab]  WITH CHECK ADD  CONSTRAINT [FK_Compras_cab_Compras_cab] FOREIGN KEY([com_numero])
REFERENCES [dbo].[Compras_cab] ([com_numero])
GO
ALTER TABLE [dbo].[Compras_cab] CHECK CONSTRAINT [FK_Compras_cab_Compras_cab]
GO
ALTER TABLE [dbo].[factura_cab]  WITH CHECK ADD  CONSTRAINT [FacCAb_Clientes] FOREIGN KEY([cli_ciruc])
REFERENCES [dbo].[clientes] ([cli_cedula])
GO
ALTER TABLE [dbo].[factura_cab] CHECK CONSTRAINT [FacCAb_Clientes]
GO
ALTER TABLE [dbo].[factura_det]  WITH CHECK ADD  CONSTRAINT [dacDet_Productos] FOREIGN KEY([pro_codigo])
REFERENCES [dbo].[productos] ([pro_codigo])
GO
ALTER TABLE [dbo].[factura_det] CHECK CONSTRAINT [dacDet_Productos]
GO
ALTER TABLE [dbo].[factura_det]  WITH CHECK ADD  CONSTRAINT [facDet_facCab] FOREIGN KEY([fac_numero])
REFERENCES [dbo].[factura_cab] ([fac_numero])
GO
ALTER TABLE [dbo].[factura_det] CHECK CONSTRAINT [facDet_facCab]
GO
/****** Object:  StoredProcedure [dbo].[getConsultaClientesPendientesPago]    Script Date: 04/05/2024 6:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getConsultaClientesPendientesPago]
--(@fac_numero int,
-- @cli_Cedula varchar(13),
-- @desde varchar(20),
-- @hasta varchar(20)
--)
AS

--ACTUALIZA LA TABLA MENSUALIDADES CUANDO SE GRABA UNA FACTURA
Select 
m.cli_cedula,
Cliente=c.cli_apellidos + ' '+ c.cli_nombres,
men_fechadesde,
men_fechahasta,
men_cuota,
c.cli_direccion,
c.cli_telefono,
men_estado
from mensualidades m 
JOIN clientes c on c.cli_cedula=m.cli_cedula
where men_estado='PENDIENTE'
and c.cli_estado<>'ANU'
order by c.cli_apellidos 

GO
/****** Object:  StoredProcedure [dbo].[getCreaMensualidades]    Script Date: 04/05/2024 6:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getCreaMensualidades]
(
@Cliente varchar(13)
)

AS
--exec [dbo].[getCreaMensualidades] '0104420286'
create table #Mensualidades
(
ins_codigo int,
cli_cedula varchar(13),
men_desde  varchar(50), 
men_hasta varchar (50),
men_cuota varchar (150), 
pro_estado varchar(10), 
men_fechamod date, 
men_fechacrea date
)
select * into #instalaciones from instalacione
declare @fecha_actual date;
set @fecha_actual=GETDATE()
while(select cast(ins_fecha_instalacion as date) from instalacione where  cli_cedula=@Cliente)< cast(@fecha_actual as date)
begin
insert into #Mensualidades
select 
ins_codigo,
cli_cedula,
Desde=cast(ins_fecha_instalacion as date),
Hasta=cast(DATEADD(MONTH,1,ins_fecha_instalacion) as date) ,
Cuota=20,
Estado='CACELADO',
Fechacrea=GETDATE(),
Fechamod=GETDATE()
from #instalaciones

update #instalaciones set ins_fecha_instalacion=GETDATE()--cast(DATEADD(month,1,ins_fecha_instalacion) as date)
where cli_cedula=@Cliente break
--where ins_fecha_instalacion<@fecha_actual
end
select * from #Mensualidades where cli_cedula='0100769007'

--exec [dbo].[getCreaMensualidades] '0100769007'


GO
/****** Object:  StoredProcedure [dbo].[Put_Actualiza_Fecha_Actual_Instalaciones]    Script Date: 04/05/2024 6:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Put_Actualiza_Fecha_Actual_Instalaciones]

AS
update Instalacione
set ins_fecha_actual=GETDATE(),ins_dias_servicio=DATEDIFF(day,ins_fecha_instalacion,GETDATE())
where 1=1


GO
/****** Object:  StoredProcedure [dbo].[Put_ColocaNumeroFacturaenMensualidad]    Script Date: 04/05/2024 6:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Put_ColocaNumeroFacturaenMensualidad]
(@fac_numero int,
 @cli_Cedula varchar(13),
 @desde varchar(20),
 @hasta varchar(20)
)
AS

--ACTUALIZA LA TABLA MENSUALIDADES CUANDO SE GRABA UNA FACTURA
update m
set m.fac_numero=@fac_numero,m.men_estado='CANCELADO'
from factura_det d
join factura_cab c on d.fac_numero=c.fac_numero
join mensualidades m on m.cli_cedula=c.cli_ciruc
where c.cli_ciruc=@cli_Cedula--'0104420283'
and m.men_fechadesde=@desde--'2023-06-01'--trim(right(LEFT(d.fac_estado,38),11))
and m.men_fechahasta=@hasta--'2023-07-01'--trim(RIGHT(d.fac_estado,10))




GO
/****** Object:  StoredProcedure [dbo].[PutActualizaFactura_Mensualidades]    Script Date: 04/05/2024 6:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PutActualizaFactura_Mensualidades]
(
@Cliente varchar(13),
@Factura int
)
AS

--set @Cliente='0104420283'
--set @Factura=1159
--SACA UN LISTADO DE MENSUALIDADES POR CLIENTE CUANDO TENGA NUMERO DE FACTURA LA MENSUALIDAD
select distinct
Numero_factura=f.fac_numero,
cliente=f.cli_ciruc,
Estado_Detalle=d.fac_estado,
desde= trim(right(LEFT(d.fac_estado,38),11)),
hasta=trim(RIGHT(d.fac_estado,10)),
m.men_codigo,
Estado_mensualidades=men_estado,
Numero_factura_mensualidades=m.fac_numero,
m.men_fechamod
INTO #datos
from factura_cab f
join factura_det d on d.fac_numero=f.fac_numero
left join mensualidades m on m.fac_numero=f.fac_numero
where f.cli_ciruc= @Cliente and f.fac_numero=@Factura and m.men_estado='PENDIENTE'
--exec [dbo].[PutActualizaFactura_Mensualidades] '0104420283',1159

select * from #datos





GO
