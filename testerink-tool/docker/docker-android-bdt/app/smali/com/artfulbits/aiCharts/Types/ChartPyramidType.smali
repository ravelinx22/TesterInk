.class public Lcom/artfulbits/aiCharts/Types/ChartPyramidType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Types/ChartPyramidType$Style;
    }
.end annotation


# static fields
.field public static final GAP_RATIO:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final MINIMAL:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Lcom/artfulbits/aiCharts/Types/ChartPyramidType$Style;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "pyramid-style"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;

    const-class v2, Lcom/artfulbits/aiCharts/Types/ChartPyramidType$Style;

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartPyramidType$Style;->Surface:Lcom/artfulbits/aiCharts/Types/ChartPyramidType$Style;

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pyramid-minimal"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;

    const-class v2, Ljava/lang/Float;

    const v3, 0x3d4ccccd    # 0.05f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->MINIMAL:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pyramid-gap_ratio"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;

    const-class v2, Ljava/lang/Float;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->GAP_RATIO:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->a:[D

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->FLAG_COLOR_PER_POINT:I

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->m_flags:I

    return-void
.end method

.method private a(DD)D
    .locals 9

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v4, p1, v0

    neg-double v6, p3

    iget-object v8, p0, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->a:[D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v2 .. v8}, Lcom/artfulbits/aiCharts/Base/MathUtils;->solveQuadratic(DDD[D)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->a:[D

    const/4 p2, 0x0

    aget-wide p2, p1, p2

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->a:[D

    const/4 p4, 0x1

    aget-wide v0, p1, p4

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 51

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v2

    iget v2, v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    iget-object v3, v1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->toArray()[Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object v3

    iget-object v4, v1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v6, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v5, v6}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/artfulbits/aiCharts/Types/ChartPyramidType$Style;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v15, v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    const/high16 v18, 0x3f000000    # 0.5f

    mul-float v14, v7, v18

    iget-object v7, v1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v8, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->GAP_RATIO:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v7, v8}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v7, v7

    iget-object v9, v1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v10, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->MINIMAL:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v9, v10}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    float-to-double v9, v9

    sget-object v11, Lcom/artfulbits/aiCharts/Types/ChartPyramidType$Style;->Surface:Lcom/artfulbits/aiCharts/Types/ChartPyramidType$Style;

    const/16 v16, 0x0

    const/16 v17, 0x0

    if-ne v5, v11, :cond_7

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    array-length v11, v3

    move-object/from16 v24, v5

    move/from16 v23, v6

    const-wide/16 v5, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v12, v11, :cond_0

    move/from16 v25, v11

    aget-object v11, v3, v12

    invoke-virtual {v11, v2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    add-double v5, v5, v26

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v25

    goto :goto_0

    :cond_0
    const-wide/16 v11, 0x0

    invoke-direct {v0, v11, v12, v5, v6}, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->a(DD)D

    move-result-wide v21

    new-array v12, v13, [D

    new-array v11, v13, [D

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v5

    move/from16 v31, v14

    move/from16 v30, v15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v14, 0x0

    :goto_1
    if-ge v5, v13, :cond_1

    move/from16 v32, v13

    aget-object v13, v3, v5

    invoke-virtual {v13, v2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v25

    move/from16 v33, v2

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-direct {v0, v14, v15, v1, v2}, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->a(DD)D

    move-result-wide v1

    float-to-double v13, v6

    aput-wide v13, v12, v5

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    add-double v15, v13, v1

    aput-wide v15, v11, v5

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v25, v7, v21

    add-double v1, v1, v25

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v13, v1

    double-to-float v6, v13

    add-int/lit8 v5, v5, 0x1

    move-wide v14, v15

    move/from16 v13, v32

    move/from16 v2, v33

    move-object/from16 v1, p1

    goto :goto_1

    :cond_1
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    div-double/2addr v1, v14

    const/4 v5, 0x0

    :goto_2
    array-length v6, v3

    if-ge v5, v6, :cond_6

    aget-object v6, v3, v5

    iget v7, v4, Landroid/graphics/Rect;->top:I

    int-to-double v7, v7

    move/from16 v15, v30

    float-to-double v9, v15

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v1

    aget-wide v13, v12, v5

    mul-double v13, v13, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v13

    double-to-float v14, v7

    iget v7, v4, Landroid/graphics/Rect;->top:I

    int-to-double v7, v7

    aget-wide v16, v11, v5

    mul-double v9, v9, v16

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v9

    double-to-float v13, v7

    move/from16 v10, v31

    float-to-double v7, v10

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v1

    aget-wide v16, v12, v5

    move-wide/from16 v34, v1

    mul-double v1, v7, v16

    double-to-float v1, v1

    aget-wide v16, v11, v5

    mul-double v7, v7, v16

    double-to-float v2, v7

    move-object/from16 v9, p1

    iget-boolean v7, v9, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v7, :cond_2

    iget-object v7, v9, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    add-float v8, v14, v13

    const/high16 v16, 0x40000000    # 2.0f

    div-float v17, v8, v16

    iget v8, v9, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move/from16 v36, v10

    iget v10, v9, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    div-float v10, v10, v16

    add-float/2addr v10, v8

    sub-float v16, v13, v14

    const/16 v19, 0x0

    move/from16 v8, v23

    move-object/from16 v37, v3

    move-object v3, v9

    move/from16 v9, v17

    move/from16 v17, v36

    move-object/from16 v20, v11

    move/from16 v11, v16

    move-object/from16 v21, v12

    move v12, v2

    move/from16 v38, v5

    move v5, v13

    move v13, v2

    move v0, v14

    move/from16 v2, v17

    move v14, v1

    move/from16 v39, v15

    move v15, v1

    move/from16 v16, v19

    move-object/from16 v17, v6

    invoke-virtual/range {v7 .. v17}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPyramid3D(FFFFFFFFZLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    move v11, v2

    move-object/from16 v8, v24

    goto :goto_3

    :cond_2
    move-object/from16 v37, v3

    move/from16 v38, v5

    move-object v3, v9

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move v5, v13

    move v0, v14

    move/from16 v39, v15

    move v11, v10

    sub-float v7, v23, v1

    move-object/from16 v8, v24

    invoke-virtual {v8, v7, v0}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v1, v23, v1

    invoke-virtual {v8, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v1, v23, v2

    invoke-virtual {v8, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v1, v23, v2

    invoke-virtual {v8, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    iget-object v1, v3, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget-object v2, v3, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v8, v6, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Rect;)V

    iget-boolean v1, v3, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v1, :cond_3

    invoke-virtual {v3, v8, v4, v6}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/Object;)V

    :cond_3
    :goto_3
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getShowLabel()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v0, v23

    move-object/from16 v2, p0

    goto :goto_5

    :cond_5
    :goto_4
    new-instance v1, Landroid/graphics/PointF;

    add-float v14, v0, v5

    mul-float v14, v14, v18

    move/from16 v0, v23

    invoke-direct {v1, v0, v14}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v2, p0

    invoke-virtual {v2, v3, v6, v1}, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;Landroid/graphics/PointF;)V

    :goto_5
    add-int/lit8 v5, v38, 0x1

    move/from16 v23, v0

    move-object v0, v2

    move-object/from16 v24, v8

    move/from16 v31, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    move-wide/from16 v1, v34

    move-object/from16 v3, v37

    move/from16 v30, v39

    goto/16 :goto_2

    :cond_6
    move-object v2, v0

    return-void

    :cond_7
    move/from16 v33, v2

    move-object/from16 v37, v3

    move v11, v14

    move/from16 v39, v15

    move-object v2, v0

    move-object v3, v1

    move v0, v6

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v5, v37

    array-length v6, v5

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    :goto_6
    if-ge v12, v6, :cond_8

    move/from16 v40, v6

    aget-object v6, v5, v12

    move/from16 v2, v33

    invoke-virtual {v6, v2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    add-double v13, v13, v21

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v12, v12, 0x1

    move/from16 v6, v40

    move-object/from16 v2, p0

    goto :goto_6

    :cond_8
    move/from16 v2, v33

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v13

    array-length v6, v5

    const/4 v12, 0x0

    const-wide/16 v28, 0x0

    :goto_7
    if-ge v12, v6, :cond_9

    aget-object v13, v5, v12

    invoke-virtual {v13, v2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    add-double v28, v28, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v15, v15, -0x1

    int-to-double v12, v15

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v7

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double v12, v14, v12

    div-double v12, v12, v28

    array-length v6, v5

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_8
    if-ge v14, v6, :cond_d

    move/from16 v41, v6

    aget-object v6, v5, v14

    move-wide/from16 v42, v7

    invoke-virtual {v6, v2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v7

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    mul-double v7, v7, v12

    move/from16 v44, v2

    iget v2, v4, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v45, v5

    move/from16 v5, v39

    mul-float v16, v5, v15

    add-float v2, v2, v16

    move-wide/from16 v46, v9

    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v7

    double-to-float v9, v9

    add-float/2addr v9, v2

    mul-float v10, v11, v15

    move-wide/from16 v48, v12

    float-to-double v12, v11

    move/from16 v50, v14

    float-to-double v14, v15

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    add-double v16, v14, v7

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v16

    double-to-float v12, v12

    sub-float v13, v0, v10

    invoke-virtual {v1, v13, v2}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr v10, v0

    invoke-virtual {v1, v10, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v10, v0, v12

    invoke-virtual {v1, v10, v9}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v10, v0, v12

    invoke-virtual {v1, v10, v9}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v10, v3, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget-object v12, v3, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v1, v6, v12}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Rect;)V

    iget-boolean v10, v3, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v10, :cond_a

    invoke-virtual {v3, v1, v4, v6}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    invoke-static/range {v42 .. v43}, Ljava/lang/Double;->isNaN(D)Z

    add-double v7, v7, v42

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v14, v7

    double-to-float v15, v14

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getShowLabel()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_b

    goto :goto_9

    :cond_b
    move/from16 v8, v44

    move-object/from16 v2, p0

    goto :goto_a

    :cond_c
    :goto_9
    new-instance v7, Landroid/graphics/PointF;

    add-float/2addr v2, v9

    mul-float v2, v2, v18

    invoke-direct {v7, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    move/from16 v8, v44

    move-object/from16 v2, p0

    invoke-virtual {v2, v3, v6, v7}, Lcom/artfulbits/aiCharts/Types/ChartPyramidType;->drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;Landroid/graphics/PointF;)V

    :goto_a
    add-int/lit8 v14, v50, 0x1

    move/from16 v39, v5

    move v2, v8

    move/from16 v6, v41

    move-wide/from16 v7, v42

    move-object/from16 v5, v45

    move-wide/from16 v9, v46

    move-wide/from16 v12, v48

    goto/16 :goto_8

    :cond_d
    move-object/from16 v2, p0

    return-void
.end method

.method public drawMarkers(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 0

    return-void
.end method

.method public getRequiredCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->None:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    return-object v0
.end method
