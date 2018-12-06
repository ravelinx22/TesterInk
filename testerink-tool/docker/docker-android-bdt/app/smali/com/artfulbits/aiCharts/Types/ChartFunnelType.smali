.class public Lcom/artfulbits/aiCharts/Types/ChartFunnelType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Types/ChartFunnelType$Style;
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

.field public static final NECK_HEIGHT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final NECK_WIDTH:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
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
            "Lcom/artfulbits/aiCharts/Types/ChartFunnelType$Style;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "funnel-style"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;

    const-class v2, Lcom/artfulbits/aiCharts/Types/ChartFunnelType$Style;

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartFunnelType$Style;->YIsHeight:Lcom/artfulbits/aiCharts/Types/ChartFunnelType$Style;

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "funel-minimal"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;

    const-class v2, Ljava/lang/Float;

    const v3, 0x3d4ccccd    # 0.05f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->MINIMAL:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "funel-gap_ratio"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;

    const-class v2, Ljava/lang/Float;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->GAP_RATIO:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "funel-neck_width"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;

    const-class v2, Ljava/lang/Float;

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->NECK_WIDTH:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "funel-neck_height"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;

    const-class v2, Ljava/lang/Float;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->NECK_HEIGHT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->FLAG_COLOR_PER_POINT:I

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->m_flags:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 49

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v2

    iget v2, v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    iget-object v3, v1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/artfulbits/aiCharts/Base/ChartPoint;

    iget-object v5, v1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    iget-object v6, v1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v7, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v6, v7}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/artfulbits/aiCharts/Types/ChartFunnelType$Style;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v9, v9, v10

    iget-object v11, v1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v12, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->GAP_RATIO:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v11, v12}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    float-to-double v11, v11

    iget-object v13, v1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v14, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->MINIMAL:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v13, v14}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    float-to-double v13, v13

    sget-object v15, Lcom/artfulbits/aiCharts/Types/ChartFunnelType$Style;->YIsWidth:Lcom/artfulbits/aiCharts/Types/ChartFunnelType$Style;

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide/16 v18, 0x0

    if-ne v6, v15, :cond_5

    new-instance v6, Lcom/artfulbits/aiCharts/Types/ChartFunnelType$1;

    invoke-direct {v6, v0, v2}, Lcom/artfulbits/aiCharts/Types/ChartFunnelType$1;-><init>(Lcom/artfulbits/aiCharts/Types/ChartFunnelType;I)V

    invoke-static {v3, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v6, v3

    move-object/from16 v21, v5

    move-wide/from16 v4, v18

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v6, :cond_0

    move/from16 v22, v6

    aget-object v6, v3, v15

    invoke-virtual {v6, v2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-le v10, v0, :cond_4

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    aget-object v1, v3, v1

    div-double v4, v16, v4

    add-int/lit8 v6, v10, -0x2

    move-object/from16 v25, v0

    move-object/from16 v26, v1

    int-to-double v0, v6

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v11

    sub-double v16, v16, v0

    const/4 v0, 0x1

    sub-int/2addr v10, v0

    int-to-double v0, v10

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v16, v16, v0

    move-object/from16 v1, v26

    const/4 v0, 0x1

    :goto_1
    array-length v6, v3

    if-ge v0, v6, :cond_4

    aget-object v6, v3, v0

    move-object/from16 v10, v21

    iget v15, v10, Landroid/graphics/Rect;->top:I

    move-wide/from16 v27, v11

    int-to-double v11, v15

    move-object/from16 v30, v6

    move/from16 v29, v7

    float-to-double v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v20, v6, v18

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double v11, v11, v20

    double-to-float v11, v11

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v16

    double-to-float v6, v6

    add-float/2addr v6, v11

    move/from16 v31, v8

    float-to-double v7, v9

    invoke-virtual {v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v20

    move/from16 v32, v9

    move-object/from16 v33, v10

    mul-double v9, v20, v4

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v7

    double-to-float v9, v9

    move-object/from16 v10, v30

    invoke-virtual {v10, v2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v20

    move/from16 v34, v2

    move-object/from16 v35, v3

    mul-double v2, v20, v4

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v2

    double-to-float v2, v7

    sub-float v7, v29, v9

    move-object/from16 v3, v25

    invoke-virtual {v3, v7, v11}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v7, v29, v9

    invoke-virtual {v3, v7, v11}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v7, v29, v2

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v7, v29, v2

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    move-object/from16 v2, p1

    iget-object v7, v2, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget-object v8, v2, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v3, v1, v8}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Rect;)V

    iget-boolean v1, v2, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v1, :cond_1

    move-object/from16 v7, v33

    invoke-virtual {v2, v3, v7, v10}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    move-object/from16 v7, v33

    :goto_2
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->isNaN(D)Z

    add-double v8, v16, v27

    add-double v18, v18, v8

    invoke-virtual {v10}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getShowLabel()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v10}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v6, v29

    move-object/from16 v8, p0

    goto :goto_4

    :cond_3
    :goto_3
    new-instance v1, Landroid/graphics/PointF;

    add-float/2addr v11, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v11, v11, v6

    move/from16 v6, v29

    invoke-direct {v1, v6, v11}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v8, p0

    invoke-virtual {v8, v2, v10, v1}, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;Landroid/graphics/PointF;)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v25, v3

    move-object/from16 v21, v7

    move-object v1, v10

    move-wide/from16 v11, v27

    move/from16 v8, v31

    move/from16 v9, v32

    move/from16 v2, v34

    move-object/from16 v3, v35

    move v7, v6

    goto/16 :goto_1

    :cond_4
    move-object/from16 v8, p0

    return-void

    :cond_5
    move/from16 v34, v2

    move-object/from16 v35, v3

    move v6, v7

    move/from16 v31, v8

    move/from16 v32, v9

    move-wide/from16 v27, v11

    move-object v8, v0

    move-object v2, v1

    move-object v7, v5

    const/4 v1, 0x0

    iget-object v0, v2, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->NECK_HEIGHT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v0, v3}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v0, v3, v0

    iget v5, v7, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float v9, v31, v0

    add-float/2addr v5, v9

    iget-object v9, v2, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v10, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->NECK_WIDTH:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v9, v10}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    mul-float v9, v9, v32

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v11, v35

    array-length v12, v11

    move-wide/from16 v20, v18

    const/4 v15, 0x0

    const/16 v22, 0x0

    :goto_5
    if-ge v15, v12, :cond_6

    aget-object v1, v11, v15

    move/from16 v4, v34

    invoke-virtual {v1, v4}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(D)D

    move-result-wide v23

    add-double v20, v20, v23

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v15, v15, 0x1

    const/4 v1, 0x0

    goto :goto_5

    :cond_6
    move/from16 v4, v34

    cmpl-double v1, v20, v18

    if-eqz v1, :cond_d

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v20

    array-length v1, v11

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v1, :cond_7

    aget-object v15, v11, v12

    invoke-virtual {v15, v4}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v20

    move/from16 v36, v4

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    add-double v18, v18, v3

    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v36

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_7
    move/from16 v36, v4

    const/4 v3, 0x1

    add-int/lit8 v1, v22, -0x1

    int-to-double v3, v1

    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v27

    sub-double v3, v16, v3

    div-double v3, v3, v18

    array-length v1, v11

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_7
    if-ge v12, v1, :cond_d

    move/from16 v37, v1

    aget-object v1, v11, v12

    move/from16 v39, v9

    move-object/from16 v38, v11

    move/from16 v11, v36

    invoke-virtual {v1, v11}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v8

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    mul-double v8, v8, v3

    move-wide/from16 v40, v3

    iget v3, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float v4, v31, v15

    add-float/2addr v3, v4

    move-wide/from16 v42, v13

    move/from16 v4, v31

    float-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v8

    double-to-float v13, v13

    add-float/2addr v13, v3

    cmpg-float v14, v13, v5

    if-gez v14, :cond_8

    sub-float v14, v32, v39

    div-float v18, v15, v0

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v18, v19, v18

    mul-float v18, v18, v14

    add-float v18, v39, v18

    move/from16 v45, v11

    move/from16 v44, v12

    float-to-double v11, v14

    move-object/from16 v46, v1

    float-to-double v1, v15

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v8

    move-wide/from16 v47, v8

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v8

    sub-double v1, v16, v1

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v1

    double-to-float v1, v11

    add-float v9, v39, v1

    sub-float v1, v6, v18

    invoke-virtual {v10, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v1, v6, v18

    invoke-virtual {v10, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v1, v6, v9

    invoke-virtual {v10, v1, v13}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v1, v6, v9

    invoke-virtual {v10, v1, v13}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v10}, Landroid/graphics/Path;->close()V

    move-object/from16 v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_8
    move-object/from16 v46, v1

    move-wide/from16 v47, v8

    move/from16 v45, v11

    move/from16 v44, v12

    cmpg-float v1, v3, v5

    if-gez v1, :cond_9

    sub-float v9, v32, v39

    div-float v1, v15, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float v9, v9, v1

    add-float v9, v39, v9

    sub-float v1, v6, v9

    invoke-virtual {v10, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v1, v6, v9

    invoke-virtual {v10, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v1, v6, v39

    invoke-virtual {v10, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v10, v1, v13}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v1, v6, v39

    invoke-virtual {v10, v1, v13}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v10, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_8
    invoke-virtual {v10}, Landroid/graphics/Path;->close()V

    move-object/from16 v1, p1

    goto :goto_9

    :cond_9
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v6, v39

    invoke-virtual {v10, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v8, v6, v39

    invoke-virtual {v10, v8, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v10, v8, v13}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v10, v1, v13}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_8

    :goto_9
    iget-object v8, v1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget-object v9, v1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    move-object/from16 v11, v46

    invoke-virtual {v8, v10, v11, v9}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Rect;)V

    iget-boolean v8, v1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v8, :cond_a

    invoke-virtual {v1, v10, v7, v11}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    float-to-double v8, v15

    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->isNaN(D)Z

    add-double v14, v47, v27

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v14

    double-to-float v15, v8

    invoke-virtual {v11}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getShowLabel()Z

    move-result v8

    if-nez v8, :cond_c

    invoke-virtual {v11}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_b

    goto :goto_a

    :cond_b
    move-object/from16 v3, p0

    const/high16 v9, 0x3f000000    # 0.5f

    goto :goto_b

    :cond_c
    :goto_a
    new-instance v8, Landroid/graphics/PointF;

    add-float/2addr v3, v13

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float v3, v3, v9

    invoke-direct {v8, v6, v3}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v3, p0

    invoke-virtual {v3, v1, v11, v8}, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;Landroid/graphics/PointF;)V

    :goto_b
    add-int/lit8 v12, v44, 0x1

    move-object v2, v1

    move-object v8, v3

    move/from16 v31, v4

    move/from16 v1, v37

    move-object/from16 v11, v38

    move/from16 v9, v39

    move-wide/from16 v3, v40

    move-wide/from16 v13, v42

    move/from16 v36, v45

    goto/16 :goto_7

    :cond_d
    move-object v3, v8

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
