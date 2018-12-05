.class public final Lcom/artfulbits/aiCharts/Base/ChartTitle;
.super Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

.field private e:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

.field private final f:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;-><init>()V

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->Near:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->d:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->Center:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->e:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->f:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->f:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->f:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartTitle;-><init>()V

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;IIIIIILandroid/graphics/Paint;)V
    .locals 3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartTitle$1;->b:[I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->d:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move p4, p2

    goto :goto_1

    :pswitch_0
    sub-int/2addr p4, p6

    goto :goto_0

    :pswitch_1
    sub-int/2addr p4, p6

    div-int/lit8 p4, p4, 0x2

    :goto_0
    add-int/2addr p4, p2

    goto :goto_1

    :pswitch_2
    add-int p4, p2, p6

    move v2, p4

    move p4, p2

    move p2, v2

    :goto_1
    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartTitle$1;->b:[I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->e:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    move v0, p3

    goto :goto_3

    :pswitch_3
    sub-int v0, p5, p7

    goto :goto_2

    :pswitch_4
    sub-int v0, p5, p7

    div-int/lit8 v0, v0, 0x2

    :goto_2
    add-int/2addr v0, p3

    move v2, v0

    move v0, p3

    move p3, v2

    goto :goto_3

    :pswitch_5
    add-int v0, p3, p7

    :goto_3
    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->b:Landroid/graphics/drawable/Drawable;

    add-int/2addr p6, p4

    add-int/2addr p7, p3

    invoke-virtual {v1, p4, p3, p6, p7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p3, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move p3, v0

    :cond_0
    iget-object p4, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->a:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    int-to-float p3, p3

    int-to-float p4, p5

    invoke-virtual {p8}, Landroid/graphics/Paint;->getTextSize()F

    move-result p5

    sub-float/2addr p4, p5

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p4, p5

    add-float/2addr p3, p4

    invoke-virtual {p8}, Landroid/graphics/Paint;->ascent()F

    move-result p4

    sub-float/2addr p3, p4

    iget-object p4, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->a:Ljava/lang/String;

    int-to-float p2, p2

    invoke-virtual {p1, p4, p2, p3, p8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected final draw(Landroid/graphics/Canvas;)V
    .locals 12

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->f:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartTitle;->getChart()Lcom/artfulbits/aiCharts/Base/ChartEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getAntiAlias()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->b:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    move v10, v1

    move v9, v2

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->c:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->m_bounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->m_bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->m_bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->m_bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->m_bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->m_bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartTitle$1;->a:[I

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->m_dock:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget-object v11, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->f:Landroid/graphics/Paint;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v11}, Lcom/artfulbits/aiCharts/Base/ChartTitle;->a(Landroid/graphics/Canvas;IIIIIILandroid/graphics/Paint;)V

    return-void

    :pswitch_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    const/high16 v1, 0x42b40000    # 90.0f

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v11, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->f:Landroid/graphics/Paint;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v11}, Lcom/artfulbits/aiCharts/Base/ChartTitle;->a(Landroid/graphics/Canvas;IIIIIILandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    const/high16 v1, -0x3d4c0000    # -90.0f

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v11, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->f:Landroid/graphics/Paint;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v11}, Lcom/artfulbits/aiCharts/Base/ChartTitle;->a(Landroid/graphics/Canvas;IIIIIILandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->f:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected final inflateAttributes(Landroid/content/res/Resources;Ljava/lang/String;ILandroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "image"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-interface {p4, p3, v0}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v1

    if-eq v1, v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->b:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_0
    const-string v0, "text"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v0, "halign"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->valueOf(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    move-result-object v0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->e:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    goto :goto_1

    :cond_2
    const-string v0, "valign"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->inflateAttributes(Landroid/content/res/Resources;Ljava/lang/String;ILandroid/util/AttributeSet;)V

    return-void
.end method

.method public final measure(Landroid/graphics/Point;)V
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->b:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->f:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->f:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_1
    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->d:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    sget-object v4, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->Center:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    if-eq v3, v4, :cond_2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_2
    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :goto_1
    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->e:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    sget-object v3, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->Center:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    if-eq v2, v3, :cond_3

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_3
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->m_dock:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    iget-boolean v1, v1, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;->vertical:Z

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->m_measuredWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    :goto_3
    iput v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->m_measuredHeight:I

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->m_measuredWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_3

    :goto_4
    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->m_measuredWidth:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->m_measuredWidth:I

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->m_measuredHeight:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->m_measuredHeight:I

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->m_measuredWidth:I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->m_measuredWidth:I

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->m_measuredHeight:I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->m_measuredHeight:I

    :cond_6
    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->m_measuredWidth:I

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->m_measuredHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public final setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->c:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->c:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartTitle;->invalidateChart(Z)V

    :cond_0
    return-void
.end method

.method public final setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->b:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->b:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartTitle;->invalidateChart(Z)V

    :cond_0
    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartTitle;->a:Ljava/lang/String;

    return-void
.end method
