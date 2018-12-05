.class public final Lcom/artfulbits/aiCharts/Base/View3D;
.super Ljava/lang/Object;


# static fields
.field public static final MODE_3D:I = 0x2

.field public static final MODE_3D_RAA:I = 0x1

.field public static final MODE_NONE:I

.field private static final a:[F


# instance fields
.field private b:I

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private final h:Lcom/artfulbits/aiCharts/Base/ChartArea;

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private final r:Landroid/graphics/Rect;

.field private final s:[F

.field private final t:[F

.field private final u:[F

.field private final v:Landroid/graphics/Matrix;

.field private final w:[F

.field private final x:[F

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/artfulbits/aiCharts/Base/View3D;->a:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartArea;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->b:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->c:F

    iput v1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->d:F

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->e:F

    iput v1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->f:F

    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->g:F

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->r:Landroid/graphics/Rect;

    const/16 v1, 0x10

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/artfulbits/aiCharts/Base/View3D;->s:[F

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/artfulbits/aiCharts/Base/View3D;->t:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->u:[F

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->v:Landroid/graphics/Matrix;

    const/16 v1, 0x8

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->h:Lcom/artfulbits/aiCharts/Base/ChartArea;

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->h:Lcom/artfulbits/aiCharts/Base/ChartArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartArea;->invalidate(I)V

    return-void
.end method


# virtual methods
.method final a(Landroid/graphics/Canvas;F)Landroid/graphics/Matrix;
    .locals 12

    sget-object v0, Lcom/artfulbits/aiCharts/Base/View3D;->a:[F

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFF[FI)Z

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFF[FI)Z

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFF[FI)Z

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v5, 0x6

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFF[FI)Z

    iget-object v6, p0, Lcom/artfulbits/aiCharts/Base/View3D;->v:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    iget-object v9, p0, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->v:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->v:Landroid/graphics/Matrix;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final a(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFFFFFFF)Landroid/graphics/Matrix;
    .locals 12

    move-object v6, p0

    move-object v0, p2

    const/4 v9, 0x0

    const/4 v10, 0x0

    cmpl-float v1, p6, v10

    if-nez v1, :cond_0

    cmpl-float v1, p8, v10

    if-nez v1, :cond_0

    return-object v9

    :cond_0
    cmpl-float v1, p10, v10

    if-nez v1, :cond_1

    cmpl-float v1, p11, v10

    if-nez v1, :cond_1

    return-object v9

    :cond_1
    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v2, 0x0

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v2, 0x1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v2, 0x2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v2, 0x3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v2, 0x4

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v2, 0x5

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v2, 0x6

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v2, 0x7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    aput v0, v1, v2

    const/4 v3, 0x0

    iget-object v4, v6, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p3

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFF[FI)Z

    add-float v7, p3, p6

    add-float v11, p4, v10

    add-float v8, p8, v10

    iget-object v4, v6, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v5, 0x2

    move v1, v7

    move v2, v11

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFF[FI)Z

    add-float v0, p3, v10

    add-float v1, p4, p10

    add-float v2, p11, v10

    iget-object v3, v6, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v4, 0x4

    move-object p2, p0

    move p3, v0

    move/from16 p4, v1

    move/from16 p5, v2

    move-object/from16 p6, v3

    move/from16 p7, v4

    invoke-virtual/range {p2 .. p7}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFF[FI)Z

    add-float v0, v7, v10

    add-float v1, v11, p10

    add-float v2, v8, p11

    iget-object v3, v6, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v4, 0x6

    move p3, v0

    move/from16 p4, v1

    move/from16 p5, v2

    move-object/from16 p6, v3

    move/from16 p7, v4

    invoke-virtual/range {p2 .. p7}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFF[FI)Z

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/View3D;->v:Landroid/graphics/Matrix;

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v2, 0x0

    iget-object v3, v6, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object p2, v0

    move-object p3, v1

    move/from16 p4, v2

    move-object/from16 p5, v3

    move/from16 p6, v4

    move/from16 p7, v5

    invoke-virtual/range {p2 .. p7}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/View3D;->v:Landroid/graphics/Matrix;

    move-object v1, p1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/View3D;->v:Landroid/graphics/Matrix;

    return-object v0

    :cond_2
    return-object v9
.end method

.method final a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFFFFFFF)Landroid/graphics/Matrix;
    .locals 12

    move-object v6, p0

    move-object v0, p2

    const/4 v8, 0x0

    const/4 v9, 0x0

    cmpl-float v1, p8, v9

    if-nez v1, :cond_0

    return-object v8

    :cond_0
    cmpl-float v1, p10, v9

    if-nez v1, :cond_1

    return-object v8

    :cond_1
    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v2, 0x0

    iget v3, v0, Landroid/graphics/RectF;->left:F

    aput v3, v1, v2

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v2, 0x1

    iget v3, v0, Landroid/graphics/RectF;->top:F

    aput v3, v1, v2

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v2, 0x2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    aput v3, v1, v2

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v2, 0x3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    aput v3, v1, v2

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v2, 0x4

    iget v3, v0, Landroid/graphics/RectF;->left:F

    aput v3, v1, v2

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v2, 0x5

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    aput v3, v1, v2

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v2, 0x6

    iget v3, v0, Landroid/graphics/RectF;->right:F

    aput v3, v1, v2

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v2, 0x7

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    aput v0, v1, v2

    const/4 v3, 0x0

    iget-object v4, v6, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p3

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFF[FI)Z

    add-float v10, p3, v9

    add-float v11, p4, v9

    add-float v7, p8, v9

    iget-object v4, v6, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v5, 0x2

    move v1, v10

    move v2, v11

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFF[FI)Z

    add-float v0, p4, p10

    const/4 v1, 0x0

    iget-object v2, v6, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v3, 0x4

    move-object p2, p0

    move p3, v10

    move/from16 p4, v0

    move/from16 p5, v1

    move-object/from16 p6, v2

    move/from16 p7, v3

    invoke-virtual/range {p2 .. p7}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFF[FI)Z

    add-float v0, v10, v9

    add-float v1, v11, p10

    add-float v2, v7, v9

    iget-object v3, v6, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v4, 0x6

    move p3, v0

    move/from16 p4, v1

    move/from16 p5, v2

    move-object/from16 p6, v3

    move/from16 p7, v4

    invoke-virtual/range {p2 .. p7}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFF[FI)Z

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/View3D;->v:Landroid/graphics/Matrix;

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v2, 0x0

    iget-object v3, v6, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object p2, v0

    move-object p3, v1

    move/from16 p4, v2

    move-object/from16 p5, v3

    move/from16 p6, v4

    move/from16 p7, v5

    invoke-virtual/range {p2 .. p7}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/View3D;->v:Landroid/graphics/Matrix;

    move-object v1, p1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/View3D;->v:Landroid/graphics/Matrix;

    return-object v0

    :cond_2
    return-object v8
.end method

.method final a(IIIII)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/View3D;->r:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, -0x1

    if-ne v5, v7, :cond_0

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/View3D;->e:F

    sub-int v7, v3, v1

    int-to-float v7, v7

    mul-float v5, v5, v7

    iput v5, v0, Lcom/artfulbits/aiCharts/Base/View3D;->j:F

    iput v7, v0, Lcom/artfulbits/aiCharts/Base/View3D;->i:F

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/View3D;->i:F

    iget v7, v0, Lcom/artfulbits/aiCharts/Base/View3D;->j:F

    sub-float/2addr v5, v7

    div-float/2addr v5, v6

    iput v5, v0, Lcom/artfulbits/aiCharts/Base/View3D;->k:F

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/View3D;->i:F

    iput v5, v0, Lcom/artfulbits/aiCharts/Base/View3D;->j:F

    goto :goto_0

    :cond_0
    iget v7, v0, Lcom/artfulbits/aiCharts/Base/View3D;->e:F

    sub-int v8, v3, v1

    int-to-float v8, v8

    mul-float v7, v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    iput v7, v0, Lcom/artfulbits/aiCharts/Base/View3D;->j:F

    iget v7, v0, Lcom/artfulbits/aiCharts/Base/View3D;->j:F

    iget v8, v0, Lcom/artfulbits/aiCharts/Base/View3D;->f:F

    mul-float v7, v7, v8

    iput v7, v0, Lcom/artfulbits/aiCharts/Base/View3D;->k:F

    int-to-float v5, v5

    iget v7, v0, Lcom/artfulbits/aiCharts/Base/View3D;->j:F

    mul-float v5, v5, v7

    iput v5, v0, Lcom/artfulbits/aiCharts/Base/View3D;->i:F

    :goto_0
    iget v5, v0, Lcom/artfulbits/aiCharts/Base/View3D;->c:F

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/View3D;->d:F

    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v5, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v8, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    iput v7, v0, Lcom/artfulbits/aiCharts/Base/View3D;->n:F

    iput v9, v0, Lcom/artfulbits/aiCharts/Base/View3D;->o:F

    iget v10, v0, Lcom/artfulbits/aiCharts/Base/View3D;->n:F

    iget v11, v0, Lcom/artfulbits/aiCharts/Base/View3D;->i:F

    mul-float v10, v10, v11

    iput v10, v0, Lcom/artfulbits/aiCharts/Base/View3D;->l:F

    iget v10, v0, Lcom/artfulbits/aiCharts/Base/View3D;->o:F

    iget v11, v0, Lcom/artfulbits/aiCharts/Base/View3D;->i:F

    mul-float v10, v10, v11

    iput v10, v0, Lcom/artfulbits/aiCharts/Base/View3D;->m:F

    sub-int/2addr v3, v1

    const/4 v10, 0x2

    div-int/2addr v3, v10

    int-to-float v3, v3

    iput v3, v0, Lcom/artfulbits/aiCharts/Base/View3D;->p:F

    sub-int v3, v4, v2

    div-int/2addr v3, v10

    int-to-float v3, v3

    iput v3, v0, Lcom/artfulbits/aiCharts/Base/View3D;->q:F

    iget v3, v0, Lcom/artfulbits/aiCharts/Base/View3D;->p:F

    mul-float v3, v3, v7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float v3, v3, v6

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->q:F

    mul-float v4, v4, v9

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float v4, v4, v6

    add-float/2addr v3, v4

    mul-float v5, v5, v8

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->i:F

    mul-float v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->t:[F

    const/4 v11, 0x0

    invoke-static {v4, v11}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->s:[F

    invoke-static {v4, v11}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->b:I

    const/16 v12, 0x9

    const/16 v13, 0x8

    const/4 v14, 0x1

    if-ne v4, v14, :cond_1

    iget v3, v0, Lcom/artfulbits/aiCharts/Base/View3D;->p:F

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->q:F

    iget-object v15, v0, Lcom/artfulbits/aiCharts/Base/View3D;->s:[F

    const/16 v16, 0x0

    neg-float v10, v3

    neg-float v14, v4

    const/16 v21, 0x0

    iget v11, v0, Lcom/artfulbits/aiCharts/Base/View3D;->i:F

    move/from16 v17, v10

    move/from16 v18, v3

    move/from16 v19, v14

    move/from16 v20, v4

    move/from16 v22, v11

    invoke-static/range {v15 .. v22}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/View3D;->t:[F

    neg-float v4, v7

    aput v4, v3, v13

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/View3D;->t:[F

    neg-float v4, v9

    aput v4, v3, v12

    iget v3, v0, Lcom/artfulbits/aiCharts/Base/View3D;->i:F

    div-float/2addr v3, v6

    iget-object v14, v0, Lcom/artfulbits/aiCharts/Base/View3D;->t:[F

    const/4 v15, 0x0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->s:[F

    const/16 v17, 0x0

    iget-object v10, v0, Lcom/artfulbits/aiCharts/Base/View3D;->t:[F

    const/16 v19, 0x0

    move-object/from16 v16, v4

    move-object/from16 v18, v10

    invoke-static/range {v14 .. v19}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->s:[F

    const/4 v10, 0x0

    invoke-static {v4, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto :goto_1

    :cond_1
    const/high16 v4, 0x42480000    # 50.0f

    iget v10, v0, Lcom/artfulbits/aiCharts/Base/View3D;->p:F

    mul-float v10, v10, v4

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->g:F

    div-float v4, v10, v4

    add-float/2addr v3, v4

    iget-object v14, v0, Lcom/artfulbits/aiCharts/Base/View3D;->t:[F

    const/4 v15, 0x0

    iget v10, v0, Lcom/artfulbits/aiCharts/Base/View3D;->p:F

    neg-float v10, v10

    iget v11, v0, Lcom/artfulbits/aiCharts/Base/View3D;->p:F

    iget v12, v0, Lcom/artfulbits/aiCharts/Base/View3D;->q:F

    neg-float v12, v12

    iget v13, v0, Lcom/artfulbits/aiCharts/Base/View3D;->q:F

    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    move/from16 v20, v4

    move/from16 v21, v3

    invoke-static/range {v14 .. v21}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    add-float/2addr v4, v3

    div-float v3, v4, v6

    :goto_1
    int-to-float v1, v1

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->p:F

    add-float/2addr v1, v4

    int-to-float v2, v2

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->q:F

    add-float/2addr v2, v4

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->i:F

    div-float/2addr v4, v6

    sub-float v6, v4, v3

    iget v10, v0, Lcom/artfulbits/aiCharts/Base/View3D;->b:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    mul-float v6, v7, v8

    mul-float v6, v6, v3

    sub-float v6, v1, v6

    mul-float v10, v9, v3

    sub-float v10, v2, v10

    mul-float v3, v3, v5

    sub-float v3, v4, v3

    goto :goto_2

    :cond_2
    move v10, v2

    move v3, v6

    move v6, v1

    :goto_2
    iget-object v11, v0, Lcom/artfulbits/aiCharts/Base/View3D;->s:[F

    sub-float/2addr v1, v6

    sub-float/2addr v2, v10

    sub-float/2addr v4, v3

    invoke-static {v1, v2, v4}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    div-float v12, v13, v12

    mul-float v1, v1, v12

    mul-float v2, v2, v12

    mul-float v4, v4, v12

    const/4 v12, 0x0

    mul-float v14, v2, v12

    neg-float v15, v4

    sub-float v13, v14, v15

    mul-float v16, v4, v12

    mul-float v17, v1, v12

    sub-float v12, v16, v17

    move/from16 v23, v5

    neg-float v5, v1

    sub-float v14, v5, v14

    invoke-static {v13, v12, v14}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v16

    const/high16 v17, 0x3f800000    # 1.0f

    div-float v16, v17, v16

    mul-float v13, v13, v16

    mul-float v12, v12, v16

    mul-float v14, v14, v16

    mul-float v16, v12, v4

    mul-float v17, v14, v2

    sub-float v16, v16, v17

    mul-float v17, v14, v1

    mul-float v4, v4, v13

    sub-float v17, v17, v4

    mul-float v4, v13, v2

    mul-float v1, v1, v12

    sub-float/2addr v4, v1

    const/4 v1, 0x0

    aput v13, v11, v1

    const/4 v1, 0x1

    aput v16, v11, v1

    const/4 v1, 0x2

    aput v5, v11, v1

    const/4 v5, 0x3

    const/4 v13, 0x0

    aput v13, v11, v5

    const/4 v5, 0x4

    aput v12, v11, v5

    const/4 v12, 0x5

    aput v17, v11, v12

    const/4 v12, 0x6

    neg-float v2, v2

    aput v2, v11, v12

    const/4 v2, 0x7

    aput v13, v11, v2

    const/16 v2, 0x8

    aput v14, v11, v2

    const/16 v12, 0x9

    aput v4, v11, v12

    const/16 v4, 0xa

    aput v15, v11, v4

    const/16 v4, 0xb

    aput v13, v11, v4

    const/16 v4, 0xc

    aput v13, v11, v4

    const/16 v4, 0xd

    aput v13, v11, v4

    const/16 v4, 0xe

    aput v13, v11, v4

    const/16 v4, 0xf

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v11, v4

    neg-float v4, v6

    neg-float v6, v10

    neg-float v3, v3

    const/4 v10, 0x0

    invoke-static {v11, v10, v4, v6, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/View3D;->u:[F

    invoke-static {v3, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v11, v0, Lcom/artfulbits/aiCharts/Base/View3D;->u:[F

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/artfulbits/aiCharts/Base/View3D;->t:[F

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/artfulbits/aiCharts/Base/View3D;->s:[F

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 v3, 0x0

    iput v3, v0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    iget v3, v0, Lcom/artfulbits/aiCharts/Base/View3D;->b:I

    const/16 v4, 0x10

    const/4 v11, 0x1

    if-ne v3, v11, :cond_5

    iget v3, v0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    or-int/2addr v3, v4

    iput v3, v0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    iget v3, v0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->l:F

    const/4 v6, 0x0

    cmpg-float v4, v4, v6

    if-gez v4, :cond_3

    const/4 v11, 0x2

    :cond_3
    or-int v1, v3, v11

    iput v1, v0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    iget v1, v0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    iget v3, v0, Lcom/artfulbits/aiCharts/Base/View3D;->m:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x4

    :goto_3
    or-int/2addr v1, v2

    :goto_4
    iput v1, v0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    return-void

    :cond_5
    const/4 v6, 0x0

    iget v3, v0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    mul-float v7, v7, v8

    cmpl-float v7, v7, v6

    if-lez v7, :cond_6

    const/4 v11, 0x2

    :cond_6
    or-int v1, v3, v11

    iput v1, v0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    iget v1, v0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    cmpl-float v3, v9, v6

    if-lez v3, :cond_7

    goto :goto_5

    :cond_7
    const/4 v2, 0x4

    :goto_5
    or-int/2addr v1, v2

    iput v1, v0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    iget v1, v0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    cmpl-float v2, v23, v6

    if-lez v2, :cond_8

    goto :goto_6

    :cond_8
    const/16 v4, 0x20

    :goto_6
    or-int/2addr v1, v4

    goto :goto_4
.end method

.method final a(I)Z
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final a()[F
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->s:[F

    return-object v0
.end method

.method final b(I)F
    .locals 1

    int-to-float p1, p1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->j:F

    mul-float p1, p1, v0

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->k:F

    add-float/2addr p1, v0

    return p1
.end method

.method final b()[F
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->t:[F

    return-object v0
.end method

.method final c()F
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->i:F

    return v0
.end method

.method final d()F
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->l:F

    return v0
.end method

.method final e()F
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->m:F

    return v0
.end method

.method final f()F
    .locals 3

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->j:F

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->k:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getDepth()F
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->e:F

    return v0
.end method

.method public final getMode()I
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->b:I

    return v0
.end method

.method public final getPerspective()F
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->g:F

    return v0
.end method

.method public final getRotationX()F
    .locals 2

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->c:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final getRotationY()F
    .locals 2

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->d:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final project(FFFLandroid/graphics/PointF;)Z
    .locals 5

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->u:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    mul-float v1, v1, p1

    const/4 v2, 0x4

    aget v2, v0, v2

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, v0, v2

    mul-float v2, v2, p3

    add-float/2addr v1, v2

    const/16 v2, 0xc

    aget v2, v0, v2

    add-float/2addr v1, v2

    const/4 v2, 0x1

    aget v3, v0, v2

    mul-float v3, v3, p1

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    const/16 v4, 0x9

    aget v4, v0, v4

    mul-float v4, v4, p3

    add-float/2addr v3, v4

    const/16 v4, 0xd

    aget v4, v0, v4

    add-float/2addr v3, v4

    const/4 v4, 0x3

    aget v4, v0, v4

    mul-float v4, v4, p1

    const/4 p1, 0x7

    aget p1, v0, p1

    mul-float p1, p1, p2

    add-float/2addr v4, p1

    const/16 p1, 0xb

    aget p1, v0, p1

    mul-float p1, p1, p3

    add-float/2addr v4, p1

    const/16 p1, 0xf

    aget p1, v0, p1

    add-float/2addr v4, p1

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 p2, 0x0

    cmpl-float p2, v4, p2

    if-nez p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    div-float p2, p1, v4

    :goto_0
    iget-object p3, p0, Lcom/artfulbits/aiCharts/Base/View3D;->r:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->r:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float v1, v1, p2

    add-float/2addr v1, p1

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    add-float/2addr p3, v0

    iput p3, p4, Landroid/graphics/PointF;->x:F

    iget-object p3, p0, Lcom/artfulbits/aiCharts/Base/View3D;->r:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, p3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->r:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float v3, v3, p2

    add-float/2addr v3, p1

    mul-float v0, v0, v3

    mul-float v0, v0, v1

    sub-float/2addr p3, v0

    iput p3, p4, Landroid/graphics/PointF;->y:F

    return v2
.end method

.method public final project(FFF[FI)Z
    .locals 5

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->u:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    mul-float v1, v1, p1

    const/4 v2, 0x4

    aget v2, v0, v2

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, v0, v2

    mul-float v2, v2, p3

    add-float/2addr v1, v2

    const/16 v2, 0xc

    aget v2, v0, v2

    add-float/2addr v1, v2

    const/4 v2, 0x1

    aget v3, v0, v2

    mul-float v3, v3, p1

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    const/16 v4, 0x9

    aget v4, v0, v4

    mul-float v4, v4, p3

    add-float/2addr v3, v4

    const/16 v4, 0xd

    aget v4, v0, v4

    add-float/2addr v3, v4

    const/4 v4, 0x3

    aget v4, v0, v4

    mul-float v4, v4, p1

    const/4 p1, 0x7

    aget p1, v0, p1

    mul-float p1, p1, p2

    add-float/2addr v4, p1

    const/16 p1, 0xb

    aget p1, v0, p1

    mul-float p1, p1, p3

    add-float/2addr v4, p1

    const/16 p1, 0xf

    aget p1, v0, p1

    add-float/2addr v4, p1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p2, v4, p1

    if-nez p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    div-float p2, p1, v4

    :goto_0
    iget-object p3, p0, Lcom/artfulbits/aiCharts/Base/View3D;->r:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->r:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float v1, v1, p2

    add-float/2addr v1, p1

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    add-float/2addr p3, v0

    aput p3, p4, p5

    add-int/2addr p5, v2

    iget-object p3, p0, Lcom/artfulbits/aiCharts/Base/View3D;->r:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, p3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->r:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float v3, v3, p2

    add-float/2addr v3, p1

    mul-float v0, v0, v3

    mul-float v0, v0, v1

    sub-float/2addr p3, v0

    aput p3, p4, p5

    return v2
.end method

.method public final rotate(FF)V
    .locals 6

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->c:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->c:F

    iget p1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->d:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->d:F

    iget p1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->d:F

    float-to-double v0, p1

    const-wide v2, -0x3fa9800000000000L    # -90.0

    const-wide v4, 0x4056800000000000L    # 90.0

    invoke-static/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/MathUtils;->clamp(DDD)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->d:F

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/View3D;->g()V

    :cond_1
    return-void
.end method

.method public final setDepth(F)V
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->e:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->e:F

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/View3D;->g()V

    :cond_0
    return-void
.end method

.method public final setMode(I)V
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->b:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->b:I

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->h:Lcom/artfulbits/aiCharts/Base/ChartArea;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final setPerspective(F)V
    .locals 7

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->g:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    float-to-double v1, p1

    const-wide v3, 0x3fb99999a0000000L    # 0.10000000149011612

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    invoke-static/range {v1 .. v6}, Lcom/artfulbits/aiCharts/Base/MathUtils;->clamp(DDD)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->g:F

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/View3D;->g()V

    :cond_0
    return-void
.end method

.method public final setRotationX(F)V
    .locals 2

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->c:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->c:F

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/View3D;->g()V

    :cond_0
    return-void
.end method

.method public final setRotationY(F)V
    .locals 6

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->d:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->d:F

    iget p1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->d:F

    float-to-double v0, p1

    const-wide v2, -0x4006de04abbbd2e8L    # -1.5707963267948966

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/MathUtils;->clamp(DDD)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->d:F

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/View3D;->g()V

    :cond_0
    return-void
.end method
