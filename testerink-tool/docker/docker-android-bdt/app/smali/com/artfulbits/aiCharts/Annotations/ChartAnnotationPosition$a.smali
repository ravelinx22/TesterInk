.class final Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$a;
.super Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/graphics/PointF;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$a;-><init>(Landroid/graphics/PointF;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;-><init>()V

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$a;->a:Landroid/graphics/PointF;

    iput-object p2, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$a;->b:Ljava/lang/String;

    iput p3, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$a;->c:I

    return-void
.end method


# virtual methods
.method protected final getPin(Lcom/artfulbits/aiCharts/Base/ChartEngine;Landroid/graphics/PointF;)V
    .locals 2

    iget v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$a;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getLegends()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object p1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->get(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/o;

    move-result-object p1

    check-cast p1, Lcom/artfulbits/aiCharts/Base/ChartLegend;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartLegend;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$a;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$a;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, v1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getAreas()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object p1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->get(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/o;

    move-result-object p1

    check-cast p1, Lcom/artfulbits/aiCharts/Base/ChartArea;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$a;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$a;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, v1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    :cond_0
    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$a;->a:Landroid/graphics/PointF;

    invoke-virtual {p2, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
