.class public Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;
.super Lcom/artfulbits/aiCharts/Annotations/ChartAnnotation;


# instance fields
.field private a:Lcom/artfulbits/aiCharts/Enums/Alignment;

.field private b:Lcom/artfulbits/aiCharts/Enums/Alignment;

.field private c:Landroid/graphics/drawable/Drawable;

.field private final d:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotation;-><init>()V

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->a:Lcom/artfulbits/aiCharts/Enums/Alignment;

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->b:Lcom/artfulbits/aiCharts/Enums/Alignment;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->d:Landroid/graphics/PointF;

    iput-object p2, p0, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->m_description:Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->c:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Drawable cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/artfulbits/aiCharts/Base/ChartEngine;)V
    .locals 5

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->getPosition()Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->d:Landroid/graphics/PointF;

    invoke-virtual {v0, p2, v1}, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;->getPin(Lcom/artfulbits/aiCharts/Base/ChartEngine;Landroid/graphics/PointF;)V

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->d:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    float-to-int p2, p2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->d:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation$1;->a:[I

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->b:Lcom/artfulbits/aiCharts/Enums/Alignment;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    div-int/lit8 v3, v1, 0x2

    sub-int/2addr p2, v3

    goto :goto_0

    :pswitch_1
    sub-int/2addr p2, v1

    :goto_0
    sget-object v3, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation$1;->a:[I

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->a:Lcom/artfulbits/aiCharts/Enums/Alignment;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v0, v3

    goto :goto_1

    :pswitch_3
    sub-int/2addr v0, v2

    :goto_1
    iget-object v3, p0, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->c:Landroid/graphics/drawable/Drawable;

    add-int/2addr v1, p2

    add-int/2addr v2, v0

    invoke-virtual {v3, p2, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHorizontalAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->b:Lcom/artfulbits/aiCharts/Enums/Alignment;

    return-object v0
.end method

.method public getVerticalAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->a:Lcom/artfulbits/aiCharts/Enums/Alignment;

    return-object v0
.end method

.method public setAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->setHorizontalAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V

    invoke-virtual {p0, p2}, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->setVerticalAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V

    return-void
.end method

.method public setHorizontalAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->b:Lcom/artfulbits/aiCharts/Enums/Alignment;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->b:Lcom/artfulbits/aiCharts/Enums/Alignment;

    :cond_0
    return-void
.end method

.method public setVerticalAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->a:Lcom/artfulbits/aiCharts/Enums/Alignment;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->a:Lcom/artfulbits/aiCharts/Enums/Alignment;

    :cond_0
    return-void
.end method
