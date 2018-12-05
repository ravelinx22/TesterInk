.class public abstract Lcom/artfulbits/aiCharts/Base/ChartType;
.super Ljava/lang/Object;


# static fields
.field protected static FLAG_COLOR_PER_POINT:I

.field protected static FLAG_INDEXED:I

.field protected static FLAG_ORIGIN_DEPENDENT:I

.field protected static FLAG_ROTATED:I

.field protected static FLAG_SIDE_BY_SIDE:I

.field protected static FLAG_STACKED:I

.field protected static FLAG_STACKED_100:I

.field protected static FLAG_SUPPORT_3D:I

.field protected static FLAG_Z_AXIS:I

.field protected static final INTERNAL_STACK_GROUP:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final POINT_WIDTH:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static a:I


# instance fields
.field protected m_flags:I

.field protected m_iconPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    sput v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_INDEXED:I

    const/4 v0, 0x2

    sput v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_SIDE_BY_SIDE:I

    const/4 v0, 0x4

    sput v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_STACKED:I

    const/16 v0, 0x8

    sput v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_STACKED_100:I

    const/16 v0, 0x10

    sput v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_ROTATED:I

    const/16 v0, 0x40

    sput v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_SUPPORT_3D:I

    const/16 v0, 0x80

    sput v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_ORIGIN_DEPENDENT:I

    const/16 v0, 0x1000

    sput v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_COLOR_PER_POINT:I

    const/16 v0, 0x2000

    sput v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_Z_AXIS:I

    sget v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_INDEXED:I

    sget v1, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_ROTATED:I

    or-int/2addr v0, v1

    sget v1, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_STACKED_100:I

    or-int/2addr v0, v1

    sput v0, Lcom/artfulbits/aiCharts/Base/ChartType;->a:I

    const-string v0, "stacked-stack_group"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;

    const-class v2, Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartType;->INTERNAL_STACK_GROUP:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "point-width"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;

    const-class v2, Ljava/lang/Float;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartType;->POINT_WIDTH:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartType;->m_iconPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartType;->m_flags:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartType;->m_iconPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public static computeXRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 10

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isIndexed()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;->getRequiredCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    move-result-object p0

    sget-object p1, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->Polar:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    const-wide/16 v2, 0x0

    if-ne p0, p1, :cond_0

    :goto_0
    int-to-double p0, v1

    invoke-virtual {p2, v2, v3, p0, p1}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->set(DD)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_6

    const-wide v2, -0x10000000000001L

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_4

    invoke-virtual {v0, v6}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->get(I)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v7

    cmpl-double v9, v7, v2

    if-lez v9, :cond_2

    move-wide v2, v7

    :cond_2
    cmpg-double v9, v7, v4

    if-gez v9, :cond_3

    move-wide v4, v7

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isSideBySide()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->a()Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getSideBySideOffset(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartArea;)Lcom/artfulbits/aiCharts/Base/DoubleRange;

    move-result-object p0

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    add-double/2addr v4, v0

    iget-wide p0, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    add-double/2addr v2, p0

    :cond_5
    invoke-virtual {p2, v4, v5, v2, v3}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->set(DD)V

    :cond_6
    return-void
.end method

.method public static varargs computeYRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;[I)V
    .locals 15

    move-object/from16 v0, p3

    invoke-virtual/range {p1 .. p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->size()I

    move-result v2

    if-lez v2, :cond_b

    const-wide v3, -0x10000000000001L

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isStacked()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->a()Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object v7

    move-wide v9, v5

    move-wide v4, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    move-wide v5, v4

    const/4 v4, 0x0

    :goto_1
    array-length v11, v0

    if-ge v4, v11, :cond_2

    invoke-virtual {v1, v3}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->get(I)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object v11

    aget v12, v0, v4

    const/4 v13, 0x1

    move-object/from16 v14, p1

    invoke-static {v7, v14, v11, v12, v13}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getStackedValue(Lcom/artfulbits/aiCharts/Base/ChartArea;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/ChartPoint;IZ)D

    move-result-wide v11

    cmpl-double v13, v11, v5

    if-lez v13, :cond_0

    move-wide v5, v11

    :cond_0
    cmpg-double v13, v11, v9

    if-gez v13, :cond_1

    move-wide v9, v11

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v14, p1

    add-int/lit8 v3, v3, 0x1

    move-wide v4, v5

    goto :goto_0

    :cond_3
    move-object/from16 v14, p1

    goto :goto_4

    :cond_4
    move-object/from16 v14, p1

    move-wide v9, v5

    move-wide v4, v3

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_8

    move-wide v5, v4

    const/4 v4, 0x0

    :goto_3
    array-length v7, v0

    if-ge v4, v7, :cond_7

    invoke-virtual {v1, v3}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->get(I)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object v7

    aget v11, v0, v4

    invoke-virtual {v7, v11}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v11

    cmpl-double v7, v11, v5

    if-lez v7, :cond_5

    move-wide v5, v11

    :cond_5
    cmpg-double v7, v11, v9

    if-gez v7, :cond_6

    move-wide v9, v11

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    move-wide v4, v5

    goto :goto_2

    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isOriginDependent()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getYAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getOrigin()D

    move-result-wide v0

    cmpl-double v2, v0, v4

    if-lez v2, :cond_9

    move-wide v4, v0

    :cond_9
    cmpg-double v2, v0, v9

    if-gez v2, :cond_a

    move-wide v9, v0

    :cond_a
    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10, v4, v5}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->set(DD)V

    :cond_b
    return-void
.end method

.method protected static drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Paint;Z)V
    .locals 1

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->isBackFilterEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBackColor()I

    move-result p2

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBackColor()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected static drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Landroid/graphics/PointF;Ljava/lang/String;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;F)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    new-instance v6, Landroid/graphics/Rect;

    iget v7, v1, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v8, v1, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    iget v9, v1, Landroid/graphics/PointF;->x:F

    float-to-int v9, v9

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    invoke-direct {v6, v7, v8, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Canvas:Landroid/graphics/Canvas;

    if-eqz v4, :cond_1

    if-nez v5, :cond_0

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v6, v5, v7}, Landroid/graphics/Rect;->inset(II)V

    goto :goto_0

    :cond_0
    iget v7, v5, Landroid/graphics/Point;->x:I

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    iget v5, v5, Landroid/graphics/Point;->y:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v6, v7, v5}, Landroid/graphics/Rect;->inset(II)V

    :goto_0
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v8, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->save(I)I

    iget v5, v6, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v7, v6, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    if-eqz v2, :cond_4

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v7, p7

    move/from16 v8, p10

    invoke-static {p2, v7, v8, v5}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a(Ljava/lang/String;Landroid/graphics/Paint;FLandroid/graphics/PointF;)F

    move-result v9

    iget v10, v5, Landroid/graphics/PointF;->x:F

    mul-int/lit8 v11, p6, 0x2

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-static {v10}, Landroid/util/FloatMath;->ceil(F)F

    move-result v10

    float-to-int v10, v10

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v11

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    float-to-int v5, v5

    if-eqz v3, :cond_2

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v11, v4, Landroid/graphics/Rect;->left:I

    iget v12, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    add-int/2addr v10, v11

    iget v11, v4, Landroid/graphics/Rect;->top:I

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    add-int/2addr v5, v11

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_2
    sget-object v11, Lcom/artfulbits/aiCharts/Base/q;->a:[I

    invoke-virtual/range {p3 .. p3}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget v11, v6, Landroid/graphics/Rect;->right:I

    iput v11, v4, Landroid/graphics/Rect;->left:I

    iget v11, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :pswitch_1
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    div-int/lit8 v10, v10, 0x2

    sub-int v12, v11, v10

    iput v12, v4, Landroid/graphics/Rect;->left:I

    :goto_1
    add-int/2addr v11, v10

    iput v11, v4, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :pswitch_2
    iget v11, v6, Landroid/graphics/Rect;->left:I

    iput v11, v4, Landroid/graphics/Rect;->right:I

    iget v11, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v10

    iput v11, v4, Landroid/graphics/Rect;->left:I

    :goto_2
    sget-object v10, Lcom/artfulbits/aiCharts/Base/q;->a:[I

    invoke-virtual/range {p4 .. p4}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_1

    goto :goto_4

    :pswitch_3
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :pswitch_4
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    div-int/lit8 v5, v5, 0x2

    sub-int v10, v6, v5

    iput v10, v4, Landroid/graphics/Rect;->top:I

    :goto_3
    add-int/2addr v6, v5

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :pswitch_5
    iget v6, v6, Landroid/graphics/Rect;->top:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v5

    iput v6, v4, Landroid/graphics/Rect;->top:I

    :goto_4
    if-eqz v3, :cond_3

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object v1, p2

    move-object v2, v4

    move/from16 v3, p10

    move v4, v9

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a(Ljava/lang/String;Landroid/graphics/Rect;FFLandroid/graphics/Paint;)V

    :cond_4
    return-void

    nop

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

.method protected static getVisibleFrom(Ljava/util/List;DDII)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
            ">;DDII)I"
        }
    .end annotation

    add-int p3, p6, p5

    const/4 p4, 0x1

    shr-int/2addr p3, p4

    move v0, p3

    move p3, p5

    :goto_0
    sub-int v1, p6, p3

    if-gt v1, p4, :cond_0

    :goto_1
    sub-int/2addr p3, p4

    invoke-static {p5, p3}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_2

    :cond_0
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    cmpl-double v3, v1, p1

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    cmpl-double v3, v1, p1

    if-nez v3, :cond_2

    sub-int/2addr p6, p4

    invoke-static {p5, p6}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_2

    :cond_2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    cmpl-double v3, v1, p1

    if-nez v3, :cond_3

    sub-int/2addr v0, p4

    invoke-static {p5, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_2
    return p0

    :cond_3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    cmpg-double v3, v1, p1

    if-gez v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    move p3, v0

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    move p6, v0

    :goto_3
    add-int v0, p6, p3

    shr-int/2addr v0, p4

    goto :goto_0
.end method

.method protected static getVisibleTo(Ljava/util/List;DDII)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
            ">;DDII)I"
        }
    .end annotation

    add-int p1, p6, p5

    const/4 p2, 0x1

    shr-int/2addr p1, p2

    move v0, p1

    move p1, p6

    :goto_0
    sub-int v1, p1, p5

    if-gt v1, p2, :cond_0

    :goto_1
    add-int/2addr p1, p2

    invoke-static {p6, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_2

    :cond_0
    invoke-interface {p0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    cmpl-double v3, v1, p3

    if-nez v3, :cond_1

    add-int/2addr p5, p2

    invoke-static {p6, p5}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_2

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    cmpg-double v3, v1, p3

    if-gtz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    cmpl-double v3, v1, p3

    if-nez v3, :cond_3

    add-int/2addr v0, p2

    invoke-static {p6, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_2
    return p0

    :cond_3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    cmpg-double v3, v1, p3

    if-gez v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    move p5, v0

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    move p1, v0

    :goto_3
    add-int v0, p1, p5

    shr-int/2addr v0, p2

    goto :goto_0
.end method

.method public static isCompatible(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartType;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;->getRequiredCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    move-result-object v0

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->None:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;->getRequiredCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    move-result-object v0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartType;->getRequiredCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    move-result-object v1

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    sget v0, Lcom/artfulbits/aiCharts/Base/ChartType;->a:I

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isFlags(I)Z

    move-result p0

    sget v0, Lcom/artfulbits/aiCharts/Base/ChartType;->a:I

    invoke-virtual {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isFlags(I)Z

    move-result p1

    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method


# virtual methods
.method public colorPerPoint()Z
    .locals 1

    sget v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_COLOR_PER_POINT:I

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isFlags(I)Z

    move-result v0

    return v0
.end method

.method public abstract draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
.end method

.method protected drawIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartType;->m_iconPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-static {p1, p2, p3, v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartType;->drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Paint;Z)V

    return-void
.end method

.method protected drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;Landroid/graphics/PointF;)V
    .locals 18

    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getShowLabel()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getFormatedLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getHLabelAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getVLabelAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabelBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabelPadding()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabelAngle()Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move-object v10, v0

    move-object v9, v1

    move-object v11, v2

    move-object v12, v3

    move v13, v4

    move-object v14, v5

    move/from16 v17, v6

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v9, v1

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v14, v12

    const/4 v13, 0x0

    const/16 v17, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerSize()Landroid/graphics/Point;

    move-result-object v16

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    invoke-static/range {v7 .. v17}, Lcom/artfulbits/aiCharts/Base/ChartType;->drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Landroid/graphics/PointF;Ljava/lang/String;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;F)V

    return-void
.end method

.method protected drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;Landroid/graphics/PointF;Landroid/graphics/Point;)V
    .locals 18

    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getShowLabel()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getFormatedLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getHLabelAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getVLabelAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabelBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabelPadding()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabelAngle()Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move-object v10, v0

    move-object v9, v1

    move-object v11, v2

    move-object v12, v3

    move v13, v4

    move-object v14, v5

    move/from16 v17, v6

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v9, v1

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v14, v12

    const/4 v13, 0x0

    const/16 v17, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v16, p4

    invoke-static/range {v7 .. v17}, Lcom/artfulbits/aiCharts/Base/ChartType;->drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Landroid/graphics/PointF;Ljava/lang/String;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;F)V

    return-void
.end method

.method protected drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;Landroid/graphics/Point;)V
    .locals 16

    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getShowLabel()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getFormatedLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabelBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabelPadding()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabelAngle()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object v10, v0

    move-object v7, v1

    move v11, v2

    move-object v12, v3

    move v15, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v7, v1

    move-object v10, v7

    move-object v12, v10

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v14, p6

    invoke-static/range {v5 .. v15}, Lcom/artfulbits/aiCharts/Base/ChartType;->drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Landroid/graphics/PointF;Ljava/lang/String;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;F)V

    return-void
.end method

.method public drawMarkers(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v10, v3, -0x1

    iget-object v3, v1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v3

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v11

    iget-object v3, v1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v3

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v13

    new-instance v15, Landroid/graphics/PointF;

    invoke-direct {v15}, Landroid/graphics/PointF;-><init>()V

    const/4 v8, 0x0

    move-object v3, v2

    move-wide v4, v11

    move-wide v6, v13

    move v9, v10

    invoke-static/range {v3 .. v9}, Lcom/artfulbits/aiCharts/Base/ChartType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v16

    move/from16 v8, v16

    invoke-static/range {v3 .. v9}, Lcom/artfulbits/aiCharts/Base/ChartType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v3

    move/from16 v4, v16

    :goto_0
    if-gt v4, v3, :cond_3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getShowLabel()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_2

    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v5, v6, v15}, Lcom/artfulbits/aiCharts/Base/ChartType;->getMarkerPoint(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;ILandroid/graphics/PointF;)V

    iget-boolean v6, v1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Area:Lcom/artfulbits/aiCharts/Base/ChartArea;

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getView3D()Lcom/artfulbits/aiCharts/Base/View3D;

    move-result-object v6

    iget v7, v15, Landroid/graphics/PointF;->x:F

    iget v8, v15, Landroid/graphics/PointF;->y:F

    iget v9, v1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v10, v1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9, v15}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFFLandroid/graphics/PointF;)Z

    :cond_1
    iget v6, v15, Landroid/graphics/PointF;->x:F

    iget v7, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v6, v7}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->isVisible(FF)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerSize()Landroid/graphics/Point;

    move-result-object v6

    invoke-virtual {v0, v1, v5, v15, v6}, Lcom/artfulbits/aiCharts/Base/ChartType;->drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;Landroid/graphics/PointF;Landroid/graphics/Point;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected getMarkerPoint(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;ILandroid/graphics/PointF;)V
    .locals 10

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v0

    invoke-virtual {p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isStacked()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, p2, p3, v2}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getStackedValue(Lcom/artfulbits/aiCharts/Base/ChartPoint;IZ)D

    move-result-wide v2

    :cond_0
    move-wide v7, v2

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isSideBySide()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getSideBySideOffset()Lcom/artfulbits/aiCharts/Base/DoubleRange;

    move-result-object p2

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->center()D

    move-result-wide p2

    add-double/2addr v0, p2

    :cond_1
    move-wide v5, v0

    move-object v4, p1

    move-object v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/artfulbits/aiCharts/Types/ChartTypes;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequiredCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->Cartesian:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    return-object v0
.end method

.method public getRequiredUsages()[Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->YValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getXRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartType;->computeXRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V

    return-void
.end method

.method public getYRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v1

    iget v1, v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {p0, p1, p2, v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->computeYRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;[I)V

    return-void
.end method

.method public getZRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 5

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->a()Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_0

    const-wide/16 v3, 0x0

    :goto_0
    invoke-virtual {p2, v3, v4, v1, v2}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->set(DD)V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_visibleSeries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    int-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    goto :goto_0
.end method

.method public isCompatible(Lcom/artfulbits/aiCharts/Base/ChartType;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartType;->isCompatible(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartType;)Z

    move-result p1

    return p1
.end method

.method protected isFlags(I)Z
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartType;->m_flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isIndexed()Z
    .locals 1

    sget v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_INDEXED:I

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isFlags(I)Z

    move-result v0

    return v0
.end method

.method public isOriginDependent()Z
    .locals 1

    sget v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_ORIGIN_DEPENDENT:I

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isFlags(I)Z

    move-result v0

    return v0
.end method

.method public isRotated()Z
    .locals 1

    sget v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_ROTATED:I

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isFlags(I)Z

    move-result v0

    return v0
.end method

.method public isSideBySide()Z
    .locals 1

    sget v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_SIDE_BY_SIDE:I

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isFlags(I)Z

    move-result v0

    return v0
.end method

.method public isStacked()Z
    .locals 1

    sget v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_STACKED:I

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isFlags(I)Z

    move-result v0

    return v0
.end method

.method public isStacked100()Z
    .locals 1

    sget v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_STACKED_100:I

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isFlags(I)Z

    move-result v0

    return v0
.end method

.method public isSupport3D()Z
    .locals 1

    sget v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_SUPPORT_3D:I

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isFlags(I)Z

    move-result v0

    return v0
.end method
