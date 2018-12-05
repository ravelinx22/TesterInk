.class final Lcom/artfulbits/aiCharts/Base/n;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/RectF;

.field public final d:Landroid/graphics/PointF;

.field public e:I


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/n;->c:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/n;->d:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/n;->e:I

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/n;->b:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/n;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/n;->d:Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/n;->d:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/n;->b:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/n;->b:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/n;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/n;->e:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    const/high16 v0, 0x42b40000    # 90.0f

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/n;->c:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/n;->c:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/n;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/n;->c:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/n;->c:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/n;->d:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/n;->b:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/n;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    const/high16 v0, -0x3d4c0000    # -90.0f

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/n;->c:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/n;->c:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/n;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/n;->c:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/n;->c:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/n;->b:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/n;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/n;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/n;->c:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/n;->c:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/n;->b:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/n;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/graphics/RectF;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;)V
    .locals 7

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/n;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/n;->e:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/n;->d:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/n;->d:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/artfulbits/aiCharts/Base/n;->c:Landroid/graphics/RectF;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lcom/artfulbits/aiCharts/Base/a;->a(Landroid/graphics/RectF;FFLcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;Landroid/graphics/RectF;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/n;->d:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/n;->d:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/artfulbits/aiCharts/Base/n;->c:Landroid/graphics/RectF;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lcom/artfulbits/aiCharts/Base/a;->a(Landroid/graphics/RectF;FFLcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;Landroid/graphics/RectF;)V

    :cond_1
    return-void
.end method
