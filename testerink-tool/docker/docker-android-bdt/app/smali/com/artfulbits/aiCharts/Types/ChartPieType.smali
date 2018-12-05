.class public Lcom/artfulbits/aiCharts/Types/ChartPieType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Types/ChartPieType$a;,
        Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;
    }
.end annotation


# static fields
.field public static final ANGLE_OFFSET:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXPAND_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LABEL_OFFSET:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final LABEL_STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final MINIMAL_SIZE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPTIMIZE_POINTS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final TICK_SIZE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "pie-expand_radius"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieType;

    const-class v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->EXPAND_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pie-label_style"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieType;

    const-class v2, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

    sget-object v4, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;->Inside:Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

    invoke-static {v0, v1, v2, v4}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->LABEL_STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pie-angle_offset"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieType;

    const-class v2, Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->ANGLE_OFFSET:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pie-labels_offset"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieType;

    const-class v2, Ljava/lang/Float;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->LABEL_OFFSET:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pie-ticks_size"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieType;

    const-class v2, Ljava/lang/Integer;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->TICK_SIZE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pie-minimal_size"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieType;

    const-class v2, Ljava/lang/Float;

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->MINIMAL_SIZE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pie-optimize_points"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieType;

    const-class v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->OPTIMIZE_POINTS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->a:Landroid/graphics/Paint;

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->FLAG_SUPPORT_3D:I

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartPieType;->FLAG_COLOR_PER_POINT:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->m_flags:I

    return-void
.end method


# virtual methods
.method protected computeSectorPath(Landroid/graphics/RectF;FFLandroid/graphics/Path;)V
    .locals 2

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p4, p1, p2, p3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-virtual {p4, p2, p1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p4}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 4

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartPieType;->ANGLE_OFFSET:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/artfulbits/aiCharts/Types/ChartPieType;->drawPie(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Ljava/util/List;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    return-void
.end method

.method protected drawIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->m_iconPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/artfulbits/aiCharts/Types/ChartPieType;->drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Paint;Z)V

    return-void
.end method

.method public drawMarkers(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 0

    return-void
.end method

.method protected drawPie(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Ljava/util/List;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 55
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;",
            "Ljava/util/List<",
            "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
            ">;",
            "Landroid/graphics/Rect;",
            "I)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v1, p4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v12, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v4

    iget v15, v4, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    sget-object v4, Lcom/artfulbits/aiCharts/Types/ChartPieType;->LABEL_STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v3, v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;->Inside:Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

    const/4 v7, 0x1

    if-eq v4, v5, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;->OutsideColumn:Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

    if-ne v4, v5, :cond_1

    const/16 v17, 0x1

    goto :goto_1

    :cond_1
    const/16 v17, 0x0

    :goto_1
    sget-object v4, Lcom/artfulbits/aiCharts/Types/ChartPieType;->LABEL_OFFSET:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v3, v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartPieType;->MINIMAL_SIZE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v3, v5}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v18, 0x40000000    # 2.0f

    div-float v5, v5, v18

    sget-object v8, Lcom/artfulbits/aiCharts/Types/ChartPieType;->TICK_SIZE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v3, v8}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v8, v1

    sget-object v6, Lcom/artfulbits/aiCharts/Types/ChartPieType;->OPTIMIZE_POINTS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v3, v6}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    div-int/lit8 v3, v2, 0x4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_2

    mul-int/lit8 v20, v6, 0x2

    add-int/lit8 v9, v20, 0x1

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    sub-int v20, v2, v9

    move/from16 v23, v3

    add-int/lit8 v3, v20, -0x1

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v13, v9, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v13, v3, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v23

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    move/from16 v25, v8

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    mul-float v5, v5, v1

    float-to-int v1, v5

    new-array v14, v2, [Lcom/artfulbits/aiCharts/Types/ChartPieType$a;

    move-object/from16 v27, v3

    move/from16 v26, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v21, 0x0

    :goto_3
    array-length v3, v14

    if-ge v5, v3, :cond_5

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v3, v15}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v23

    add-double v21, v21, v23

    move-object/from16 v28, v6

    sget-object v6, Lcom/artfulbits/aiCharts/Types/ChartPieType;->EXPAND_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v3, v6}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getShowLabel()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    :cond_3
    new-instance v6, Lcom/artfulbits/aiCharts/Types/ChartPieType$a;

    invoke-direct {v6, v0, v3}, Lcom/artfulbits/aiCharts/Types/ChartPieType$a;-><init>(Lcom/artfulbits/aiCharts/Types/ChartPieType;Lcom/artfulbits/aiCharts/Base/ChartPoint;)V

    aput-object v6, v14, v5

    iget v3, v8, Landroid/graphics/Point;->x:I

    aget-object v6, v14, v5

    iget v6, v6, Lcom/artfulbits/aiCharts/Types/ChartPieType$a;->b:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v8, Landroid/graphics/Point;->x:I

    iget v3, v8, Landroid/graphics/Point;->y:I

    aget-object v6, v14, v5

    iget v6, v6, Lcom/artfulbits/aiCharts/Types/ChartPieType$a;->c:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v8, Landroid/graphics/Point;->y:I

    :cond_4
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v6, v28

    goto :goto_3

    :cond_5
    move-object/from16 v28, v6

    if-eqz v16, :cond_6

    iget v3, v8, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v11

    iget v5, v8, Landroid/graphics/Point;->y:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v11

    invoke-virtual {v7, v3, v5}, Landroid/graphics/Rect;->inset(II)V

    :cond_6
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v3, v10, v1

    sub-int v4, v9, v1

    add-int v5, v10, v1

    add-int v6, v9, v1

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    move/from16 v5, v25

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_b

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    const-wide v23, 0x4076800000000000L    # 360.0

    invoke-virtual {v6, v15}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v29

    mul-double v29, v29, v23

    move/from16 v39, v9

    div-double v8, v29, v21

    double-to-float v8, v8

    move/from16 v40, v10

    float-to-double v9, v5

    const-wide/high16 v23, 0x3fe0000000000000L    # 0.5

    move-object/from16 v41, v14

    float-to-double v13, v8

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v23

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    double-to-float v9, v9

    sget-object v10, Lcom/artfulbits/aiCharts/Types/ChartPieType;->EXPAND_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v6, v10}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-boolean v13, v12, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v13, :cond_8

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v14

    int-to-float v14, v14

    move/from16 v42, v2

    iget v2, v12, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move/from16 v43, v11

    iget v11, v12, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    div-float v11, v11, v18

    add-float/2addr v2, v11

    if-eqz v10, :cond_7

    int-to-float v10, v10

    invoke-static {v9}, Landroid/util/FloatMath;->cos(F)F

    move-result v11

    mul-float v11, v11, v10

    add-float/2addr v13, v11

    invoke-static {v9}, Landroid/util/FloatMath;->sin(F)F

    move-result v9

    mul-float v10, v10, v9

    add-float/2addr v2, v10

    :cond_7
    move/from16 v32, v2

    move/from16 v30, v13

    iget-object v2, v12, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget v9, v12, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    int-to-float v10, v1

    move-object/from16 v29, v2

    move/from16 v31, v14

    move/from16 v33, v9

    move/from16 v34, v10

    move/from16 v35, v10

    move/from16 v36, v5

    move/from16 v37, v8

    move-object/from16 v38, v6

    invoke-virtual/range {v29 .. v38}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPie3D(FFFFFFFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    move-object/from16 v9, v27

    move-object/from16 v2, v28

    goto :goto_5

    :cond_8
    move/from16 v42, v2

    move/from16 v43, v11

    move-object/from16 v2, v28

    invoke-virtual {v2, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    if-lez v10, :cond_9

    int-to-float v10, v10

    invoke-static {v9}, Landroid/util/FloatMath;->cos(F)F

    move-result v11

    mul-float v11, v11, v10

    invoke-static {v9}, Landroid/util/FloatMath;->sin(F)F

    move-result v9

    mul-float v10, v10, v9

    invoke-virtual {v2, v11, v10}, Landroid/graphics/RectF;->offset(FF)V

    :cond_9
    invoke-virtual {v0, v2, v5, v8, v3}, Lcom/artfulbits/aiCharts/Types/ChartPieType;->computeSectorPath(Landroid/graphics/RectF;FFLandroid/graphics/Path;)V

    move-object/from16 v9, v27

    invoke-virtual {v2, v9}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget-object v10, v12, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v10, v3, v6, v9}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Rect;)V

    iget-boolean v10, v12, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v10, :cond_a

    invoke-virtual {v12, v3, v9, v6}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/Object;)V

    :cond_a
    :goto_5
    add-float/2addr v5, v8

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v28, v2

    move-object/from16 v27, v9

    move/from16 v9, v39

    move/from16 v10, v40

    move-object/from16 v14, v41

    move/from16 v2, v42

    move/from16 v11, v43

    move-object/from16 v13, p2

    goto/16 :goto_4

    :cond_b
    move/from16 v39, v9

    move/from16 v40, v10

    move/from16 v43, v11

    move-object/from16 v41, v14

    if-eqz v16, :cond_c

    int-to-float v1, v1

    :goto_6
    move v13, v1

    goto :goto_7

    :cond_c
    int-to-float v1, v1

    mul-float v1, v1, v26

    goto :goto_6

    :goto_7
    const-wide v23, 0x401921fb54442d18L    # 6.283185307179586

    div-double v20, v23, v21

    move/from16 v1, p4

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14}, Landroid/graphics/PointF;-><init>()V

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11}, Landroid/graphics/PointF;-><init>()V

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    move/from16 v19, v1

    move-object/from16 v9, v41

    const/4 v8, 0x0

    :goto_8
    array-length v1, v9

    if-ge v8, v1, :cond_18

    move-object/from16 v6, p2

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    aget-object v2, v9, v8

    invoke-virtual {v1, v15}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    mul-double v3, v3, v20

    double-to-float v5, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v3, v3, v5

    add-float v3, v19, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    rem-double v3, v3, v23

    double-to-float v3, v3

    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_d

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double v3, v3, v23

    double-to-float v3, v3

    :cond_d
    if-eqz v2, :cond_17

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    move/from16 v44, v5

    iget-boolean v5, v12, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v5, :cond_e

    move-object/from16 v45, v7

    move/from16 v5, v40

    int-to-double v6, v5

    move/from16 v47, v8

    move-object/from16 v46, v9

    float-to-double v8, v13

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v29, v8, v25

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double v6, v6, v29

    double-to-float v6, v6

    iput v6, v14, Landroid/graphics/PointF;->x:F

    iget v6, v12, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v7, v12, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    div-float v7, v7, v18

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v27

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v8

    double-to-float v6, v6

    iput v6, v14, Landroid/graphics/PointF;->y:F

    iget-object v6, v12, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Area:Lcom/artfulbits/aiCharts/Base/ChartArea;

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getView3D()Lcom/artfulbits/aiCharts/Base/View3D;

    move-result-object v6

    iget v7, v14, Landroid/graphics/PointF;->x:F

    move/from16 v9, v39

    int-to-float v8, v9

    move/from16 v48, v15

    iget v15, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7, v8, v15, v14}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFFLandroid/graphics/PointF;)Z

    move-object/from16 v49, v1

    goto :goto_9

    :cond_e
    move-object/from16 v45, v7

    move/from16 v47, v8

    move-object/from16 v46, v9

    move/from16 v48, v15

    move/from16 v9, v39

    move/from16 v5, v40

    int-to-double v6, v5

    move-object/from16 v49, v1

    float-to-double v0, v13

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v29, v0, v25

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double v6, v6, v29

    double-to-float v6, v6

    iput v6, v14, Landroid/graphics/PointF;->x:F

    int-to-double v6, v9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v27

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v0

    double-to-float v0, v6

    iput v0, v14, Landroid/graphics/PointF;->y:F

    :goto_9
    if-eqz v16, :cond_16

    iget v0, v14, Landroid/graphics/PointF;->x:F

    iget v1, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-boolean v0, v12, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v0, :cond_f

    int-to-double v0, v5

    move/from16 v15, v43

    int-to-float v6, v15

    add-float/2addr v6, v13

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v25, v25, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double v0, v0, v25

    double-to-float v0, v0

    iput v0, v14, Landroid/graphics/PointF;->x:F

    iget v0, v12, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v1, v12, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    div-float v1, v1, v18

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v27

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v6

    double-to-float v0, v0

    iput v0, v14, Landroid/graphics/PointF;->y:F

    iget-object v0, v12, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Area:Lcom/artfulbits/aiCharts/Base/ChartArea;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getView3D()Lcom/artfulbits/aiCharts/Base/View3D;

    move-result-object v0

    iget v1, v14, Landroid/graphics/PointF;->x:F

    int-to-float v6, v9

    iget v7, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v6, v7, v14}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFFLandroid/graphics/PointF;)Z

    goto :goto_a

    :cond_f
    move/from16 v15, v43

    int-to-double v0, v5

    int-to-float v6, v15

    add-float/2addr v6, v13

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v25, v25, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double v0, v0, v25

    double-to-float v0, v0

    iput v0, v14, Landroid/graphics/PointF;->x:F

    int-to-double v0, v9

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v27

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v6

    double-to-float v0, v0

    iput v0, v14, Landroid/graphics/PointF;->y:F

    :goto_a
    sget-object v0, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    const-wide v6, 0x4012d97c7f3321d2L    # 4.71238898038469

    const-wide v25, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-eqz v17, :cond_12

    iget v1, v14, Landroid/graphics/PointF;->x:F

    iget v8, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v1, v8}, Landroid/graphics/PointF;->set(FF)V

    cmpg-double v1, v3, v25

    if-ltz v1, :cond_11

    cmpl-double v1, v3, v6

    if-lez v1, :cond_10

    goto :goto_b

    :cond_10
    move-object/from16 v8, p3

    iget v1, v8, Landroid/graphics/Rect;->left:I

    iget v3, v2, Lcom/artfulbits/aiCharts/Types/ChartPieType$a;->b:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, v14, Landroid/graphics/PointF;->x:F

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    goto :goto_c

    :cond_11
    :goto_b
    move-object/from16 v8, p3

    iget v1, v8, Landroid/graphics/Rect;->right:I

    iget v3, v2, Lcom/artfulbits/aiCharts/Types/ChartPieType$a;->b:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, v14, Landroid/graphics/PointF;->x:F

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/Alignment;->Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

    :goto_c
    move-object v3, v1

    move-object/from16 v1, p0

    iget-object v4, v1, Lcom/artfulbits/aiCharts/Types/ChartPieType;->a:Landroid/graphics/Paint;

    invoke-virtual/range {v49 .. v49}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getBorderColor()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v1, Lcom/artfulbits/aiCharts/Types/ChartPieType;->a:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v12, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Canvas:Landroid/graphics/Canvas;

    iget v6, v10, Landroid/graphics/PointF;->x:F

    iget v7, v10, Landroid/graphics/PointF;->y:F

    move-object/from16 v50, v0

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move-object/from16 v51, v3

    iget v3, v11, Landroid/graphics/PointF;->y:F

    move/from16 v52, v5

    iget-object v5, v1, Lcom/artfulbits/aiCharts/Types/ChartPieType;->a:Landroid/graphics/Paint;

    move-object/from16 v25, v4

    move/from16 v26, v6

    move/from16 v27, v7

    move/from16 v28, v0

    move/from16 v29, v3

    move-object/from16 v30, v5

    invoke-virtual/range {v25 .. v30}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v12, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Canvas:Landroid/graphics/Canvas;

    iget v3, v11, Landroid/graphics/PointF;->x:F

    iget v4, v11, Landroid/graphics/PointF;->y:F

    iget v5, v14, Landroid/graphics/PointF;->x:F

    iget v6, v14, Landroid/graphics/PointF;->y:F

    iget-object v7, v1, Lcom/artfulbits/aiCharts/Types/ChartPieType;->a:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move/from16 v26, v3

    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v29, v6

    move-object/from16 v30, v7

    invoke-virtual/range {v25 .. v30}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v5, v50

    move-object/from16 v4, v51

    goto :goto_10

    :cond_12
    move/from16 v52, v5

    move-object/from16 v1, p0

    move-object/from16 v8, p3

    cmpg-double v0, v3, v25

    if-gez v0, :cond_13

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/Alignment;->Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

    :goto_d
    sget-object v3, Lcom/artfulbits/aiCharts/Enums/Alignment;->Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

    goto :goto_f

    :cond_13
    const-wide v25, 0x400921fb54442d18L    # Math.PI

    cmpg-double v0, v3, v25

    if-gez v0, :cond_14

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    goto :goto_d

    :cond_14
    cmpg-double v0, v3, v6

    if-gez v0, :cond_15

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    :goto_e
    sget-object v3, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    goto :goto_f

    :cond_15
    sget-object v0, Lcom/artfulbits/aiCharts/Enums/Alignment;->Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

    goto :goto_e

    :goto_f
    iget-object v4, v12, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Canvas:Landroid/graphics/Canvas;

    iget v5, v10, Landroid/graphics/PointF;->x:F

    iget v6, v10, Landroid/graphics/PointF;->y:F

    iget v7, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v53, v0

    iget v0, v14, Landroid/graphics/PointF;->y:F

    move-object/from16 v54, v3

    iget-object v3, v1, Lcom/artfulbits/aiCharts/Types/ChartPieType;->a:Landroid/graphics/Paint;

    move-object/from16 v25, v4

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v7

    move/from16 v29, v0

    move-object/from16 v30, v3

    invoke-virtual/range {v25 .. v30}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v4, v53

    move-object/from16 v5, v54

    :goto_10
    iget-object v3, v2, Lcom/artfulbits/aiCharts/Types/ChartPieType$a;->a:Ljava/lang/String;

    invoke-virtual/range {v49 .. v49}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabelBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual/range {v49 .. v49}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabelPadding()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual/range {v49 .. v49}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual/range {v49 .. v49}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    invoke-virtual/range {v49 .. v49}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerSize()Landroid/graphics/Point;

    move-result-object v25

    const/16 v26, 0x0

    move-object v2, v1

    move-object/from16 v1, p1

    move-object v2, v14

    move/from16 v28, v44

    move/from16 v27, v52

    move-object/from16 v29, v45

    move/from16 v30, v47

    move-object v8, v0

    move v0, v9

    move-object/from16 v31, v46

    move-object/from16 v9, v22

    move/from16 v22, v27

    move-object/from16 v27, v10

    move-object/from16 v10, v25

    move-object/from16 v25, v11

    move/from16 v11, v26

    invoke-static/range {v1 .. v11}, Lcom/artfulbits/aiCharts/Types/ChartPieType;->drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Landroid/graphics/PointF;Ljava/lang/String;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;F)V

    move-object/from16 v1, p0

    goto :goto_11

    :cond_16
    move/from16 v22, v5

    move v0, v9

    move-object/from16 v27, v10

    move-object/from16 v25, v11

    move/from16 v15, v43

    move/from16 v28, v44

    move-object/from16 v29, v45

    move-object/from16 v31, v46

    move/from16 v30, v47

    move-object/from16 v2, v49

    move-object/from16 v1, p0

    invoke-virtual {v1, v12, v2, v14}, Lcom/artfulbits/aiCharts/Types/ChartPieType;->drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;Landroid/graphics/PointF;)V

    goto :goto_11

    :cond_17
    move-object v1, v0

    move/from16 v28, v5

    move-object/from16 v29, v7

    move/from16 v30, v8

    move-object/from16 v31, v9

    move-object/from16 v27, v10

    move-object/from16 v25, v11

    move/from16 v48, v15

    move/from16 v0, v39

    move/from16 v22, v40

    move/from16 v15, v43

    :goto_11
    add-float v19, v19, v28

    add-int/lit8 v8, v30, 0x1

    move/from16 v39, v0

    move-object v0, v1

    move/from16 v43, v15

    move/from16 v40, v22

    move-object/from16 v11, v25

    move-object/from16 v10, v27

    move-object/from16 v7, v29

    move-object/from16 v9, v31

    move/from16 v15, v48

    goto/16 :goto_8

    :cond_18
    move-object v1, v0

    move-object/from16 v29, v7

    return-object v29
.end method

.method public getRequiredCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->None:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    return-object v0
.end method
