.class final Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$c;
.super Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;-><init>()V

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$c;->a:Ljava/lang/String;

    iput p2, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$c;->b:I

    return-void
.end method


# virtual methods
.method protected final getPin(Lcom/artfulbits/aiCharts/Base/ChartEngine;Landroid/graphics/PointF;)V
    .locals 8

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getSeries()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object p1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->get(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/o;

    move-result-object p1

    check-cast p1, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    iget v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$c;->b:I

    if-ltz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->size()I

    move-result v0

    iget v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$c;->b:I

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v0

    iget v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$c;->b:I

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->get(I)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object v0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v1

    iget v1, v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    invoke-static {p1}, Lcom/artfulbits/aiCharts/Base/ChartTransform;->create(Lcom/artfulbits/aiCharts/Base/ChartSeries;)Lcom/artfulbits/aiCharts/Base/ChartTransform;

    move-result-object v2

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v3

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v5

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/artfulbits/aiCharts/Base/ChartTransform;->getPoint(DDLandroid/graphics/PointF;)V

    :cond_0
    return-void
.end method
