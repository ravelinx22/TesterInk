.class public final Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;
.super Ljava/lang/Object;


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:D

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/Paint;

.field private g:Ljava/lang/String;

.field private h:Lcom/artfulbits/aiCharts/Enums/Alignment;

.field private i:Lcom/artfulbits/aiCharts/Enums/Alignment;

.field private j:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->a:D

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->b:D

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->c:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->d:D

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->e:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->f:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->g:Ljava/lang/String;

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->h:Lcom/artfulbits/aiCharts/Enums/Alignment;

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->i:Lcom/artfulbits/aiCharts/Enums/Alignment;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->j:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->f:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0x64

    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->f:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;-><init>()V

    iput-wide p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->c:D

    iput-wide p3, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->d:D

    return-void
.end method


# virtual methods
.method protected final draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartAxis;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getPosition()Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    move-result-object v5

    iget-boolean v13, v5, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->IsVertical:Z

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->g:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v14, v5, 0x1

    iget-wide v5, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->a:D

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v12}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v5

    goto :goto_0

    :cond_0
    iget-wide v5, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->a:D

    :goto_0
    iget-wide v7, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->b:D

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v12}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v7

    :goto_1
    move-wide v15, v7

    goto :goto_2

    :cond_1
    iget-wide v7, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->b:D

    goto :goto_1

    :goto_2
    iget-wide v7, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->c:D

    invoke-static {v7, v8}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-eqz v7, :cond_2

    sub-double v7, v15, v5

    :goto_3
    move-wide/from16 v17, v7

    goto :goto_4

    :cond_2
    iget-wide v7, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->c:D

    goto :goto_3

    :goto_4
    if-eqz v14, :cond_3

    iget-object v7, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->j:Landroid/graphics/Paint;

    iget-object v8, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->g:Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->g:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    :cond_3
    move-wide v9, v5

    :goto_5
    cmpg-double v5, v9, v15

    if-gez v5, :cond_9

    invoke-virtual {v12, v9, v10}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->valueToCoefficient(D)D

    move-result-wide v5

    add-double v7, v9, v17

    invoke-virtual {v12, v7, v8}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->valueToCoefficient(D)D

    move-result-wide v7

    invoke-virtual {v11, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    if-eqz v13, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->isInverted()Z

    move-result v19

    if-eqz v19, :cond_4

    move-wide/from16 v20, v9

    iget v9, v2, Landroid/graphics/Rect;->top:I

    int-to-double v9, v9

    move-object/from16 v22, v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v12

    move/from16 v23, v13

    int-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v12

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v9, v5

    double-to-float v5, v9

    iput v5, v11, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-double v5, v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, v11, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_6

    :cond_4
    move-wide/from16 v20, v9

    move-object/from16 v22, v12

    move/from16 v23, v13

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    int-to-double v9, v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v12

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v9, v5

    double-to-float v5, v9

    iput v5, v11, Landroid/graphics/RectF;->bottom:F

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-double v5, v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, v11, Landroid/graphics/RectF;->top:F

    goto :goto_6

    :cond_5
    move-wide/from16 v20, v9

    move-object/from16 v22, v12

    move/from16 v23, v13

    invoke-virtual/range {p3 .. p3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->isInverted()Z

    move-result v9

    if-eqz v9, :cond_6

    iget v9, v2, Landroid/graphics/Rect;->right:I

    int-to-double v9, v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v12

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v9, v5

    double-to-float v5, v9

    iput v5, v11, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-double v5, v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, v11, Landroid/graphics/RectF;->left:F

    goto :goto_6

    :cond_6
    iget v9, v2, Landroid/graphics/Rect;->left:I

    int-to-double v9, v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v12

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v9, v5

    double-to-float v5, v9

    iput v5, v11, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/Rect;->left:I

    int-to-double v5, v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, v11, Landroid/graphics/RectF;->right:F

    :goto_6
    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->e:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_7

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_7

    :cond_7
    invoke-virtual {v11, v3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v5, v11, Landroid/graphics/RectF;->left:F

    iget v6, v3, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v11, Landroid/graphics/RectF;->left:F

    iget v5, v11, Landroid/graphics/RectF;->top:F

    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v11, Landroid/graphics/RectF;->top:F

    iget v5, v11, Landroid/graphics/RectF;->right:F

    iget v6, v3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v11, Landroid/graphics/RectF;->right:F

    iget v5, v11, Landroid/graphics/RectF;->bottom:F

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v11, Landroid/graphics/RectF;->bottom:F

    :goto_7
    if-eqz v14, :cond_8

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v6, v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v7, v5

    iget-object v8, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->h:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iget-object v9, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->i:Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-object v5, v11

    move-wide/from16 v12, v20

    move-object v10, v11

    invoke-static/range {v5 .. v10}, Lcom/artfulbits/aiCharts/Base/a;->a(Landroid/graphics/RectF;FFLcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;Landroid/graphics/RectF;)V

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->g:Ljava/lang/String;

    iget v6, v11, Landroid/graphics/RectF;->left:F

    iget v7, v11, Landroid/graphics/RectF;->bottom:F

    iget-object v8, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->j:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_8
    move-wide/from16 v12, v20

    :goto_8
    iget-wide v5, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->d:D

    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-eqz v9, :cond_9

    iget-wide v5, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->d:D

    add-double v9, v12, v5

    move-object/from16 v12, v22

    move/from16 v13, v23

    goto/16 :goto_5

    :cond_9
    return-void
.end method

.method public final getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getColor()I
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public final getEnd()D
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->b:D

    return-wide v0
.end method

.method public final getHorizontalAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->h:Lcom/artfulbits/aiCharts/Enums/Alignment;

    return-object v0
.end method

.method public final getPeriod()D
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->d:D

    return-wide v0
.end method

.method public final getStart()D
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->a:D

    return-wide v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->j:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getVerticalAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->i:Lcom/artfulbits/aiCharts/Enums/Alignment;

    return-object v0
.end method

.method public final getWidth()D
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->c:D

    return-wide v0
.end method

.method public final setAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->setHorizontalAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V

    invoke-virtual {p0, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->setVerticalAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V

    return-void
.end method

.method public final setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final setEnd(D)V
    .locals 0

    iput-wide p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->b:D

    return-void
.end method

.method public final setHorizontalAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->h:Lcom/artfulbits/aiCharts/Enums/Alignment;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->h:Lcom/artfulbits/aiCharts/Enums/Alignment;

    :cond_0
    return-void
.end method

.method public final setPeriod(D)V
    .locals 0

    iput-wide p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->d:D

    return-void
.end method

.method public final setStart(D)V
    .locals 0

    iput-wide p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->a:D

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->g:Ljava/lang/String;

    return-void
.end method

.method public final setVerticalAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->i:Lcom/artfulbits/aiCharts/Enums/Alignment;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->i:Lcom/artfulbits/aiCharts/Enums/Alignment;

    :cond_0
    return-void
.end method

.method public final setWidth(D)V
    .locals 0

    iput-wide p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->c:D

    return-void
.end method
