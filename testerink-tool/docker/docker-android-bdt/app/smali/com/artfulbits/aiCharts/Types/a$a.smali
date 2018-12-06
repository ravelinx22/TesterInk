.class final Lcom/artfulbits/aiCharts/Types/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Types/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:[F

.field private b:I

.field private c:[F

.field private synthetic d:Lcom/artfulbits/aiCharts/Types/a;


# direct methods
.method public constructor <init>(Lcom/artfulbits/aiCharts/Types/a;)V
    .locals 1

    const/16 v0, 0x18

    invoke-direct {p0, p1, v0}, Lcom/artfulbits/aiCharts/Types/a$a;-><init>(Lcom/artfulbits/aiCharts/Types/a;I)V

    return-void
.end method

.method private constructor <init>(Lcom/artfulbits/aiCharts/Types/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Types/a$a;->d:Lcom/artfulbits/aiCharts/Types/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/artfulbits/aiCharts/Types/a$a;->b:I

    const/4 p1, 0x3

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    const/16 p1, 0x18

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Types/a$a;->a:[F

    return-void
.end method

.method private static a(II)I
    .locals 0

    rem-int/lit8 p0, p0, 0x4

    if-gez p0, :cond_0

    add-int/lit8 p0, p0, 0x4

    :cond_0
    return p0
.end method

.method private a(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;[FIII[F)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p6

    mul-int/lit8 v10, p3, 0x3

    mul-int/lit8 v11, p4, 0x3

    mul-int/lit8 v12, p5, 0x3

    add-int/lit8 v1, v10, 0x1

    aget v13, v8, v1

    add-int/lit8 v1, v11, 0x1

    aget v14, v8, v1

    add-int/lit8 v1, v12, 0x1

    aget v15, v8, v1

    const/4 v7, 0x0

    aget v1, v9, v7

    const/4 v2, 0x1

    move/from16 v16, v1

    const/4 v6, 0x1

    :goto_0
    array-length v1, v9

    if-ge v6, v1, :cond_7

    aget v17, v9, v6

    cmpg-float v1, v15, v17

    if-gtz v1, :cond_6

    cmpl-float v1, v13, v16

    if-ltz v1, :cond_6

    iput v7, v0, Lcom/artfulbits/aiCharts/Types/a$a;->b:I

    cmpl-float v1, v15, v16

    if-ltz v1, :cond_0

    invoke-direct {v0, v8, v12}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI)V

    move v9, v6

    move/from16 v20, v15

    const/4 v15, 0x0

    goto :goto_3

    :cond_0
    cmpl-float v1, v14, v16

    if-lez v1, :cond_1

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    const/16 v18, 0x0

    move-object/from16 v1, p2

    move v2, v12

    move-object/from16 v3, p2

    move v4, v11

    move-object/from16 v19, v5

    move/from16 v5, v16

    move v9, v6

    move-object/from16 v6, v19

    move/from16 v20, v15

    const/4 v15, 0x0

    move/from16 v7, v18

    :goto_1
    invoke-static/range {v1 .. v7}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI[FIF[FI)V

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    invoke-direct {v0, v1, v15}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI)V

    goto :goto_2

    :cond_1
    move v9, v6

    move/from16 v20, v15

    const/4 v15, 0x0

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    const/4 v7, 0x0

    move-object/from16 v1, p2

    move v2, v11

    move-object/from16 v3, p2

    move v4, v10

    move/from16 v5, v16

    goto :goto_1

    :goto_2
    iget-object v6, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    const/4 v7, 0x0

    move-object/from16 v1, p2

    move v2, v12

    move-object/from16 v3, p2

    move v4, v10

    move/from16 v5, v16

    invoke-static/range {v1 .. v7}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI[FIF[FI)V

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    invoke-direct {v0, v1, v15}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI)V

    :goto_3
    cmpg-float v1, v13, v17

    if-gez v1, :cond_2

    invoke-direct {v0, v8, v10}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI)V

    goto :goto_4

    :cond_2
    iget-object v6, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    const/4 v7, 0x0

    move-object/from16 v1, p2

    move v2, v12

    move-object/from16 v3, p2

    move v4, v10

    move/from16 v5, v17

    invoke-static/range {v1 .. v7}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI[FIF[FI)V

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    invoke-direct {v0, v1, v15}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI)V

    :goto_4
    cmpg-float v1, v14, v16

    if-gez v1, :cond_3

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    const/4 v7, 0x0

    move-object/from16 v1, p2

    move v2, v11

    move-object/from16 v3, p2

    move v4, v10

    :goto_5
    move/from16 v5, v17

    invoke-static/range {v1 .. v7}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI[FIF[FI)V

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    invoke-direct {v0, v1, v15}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI)V

    goto :goto_6

    :cond_3
    cmpl-float v1, v14, v17

    if-lez v1, :cond_4

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    const/4 v7, 0x0

    move-object/from16 v1, p2

    move v2, v11

    move-object/from16 v3, p2

    move v4, v12

    goto :goto_5

    :cond_4
    cmpl-float v1, v13, v17

    if-lez v1, :cond_5

    cmpg-float v1, v14, v17

    if-gez v1, :cond_5

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    const/4 v7, 0x0

    move-object/from16 v1, p2

    move v2, v11

    move-object/from16 v3, p2

    move v4, v10

    move/from16 v5, v17

    invoke-static/range {v1 .. v7}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI[FIF[FI)V

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    invoke-direct {v0, v1, v15}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI)V

    :cond_5
    invoke-direct {v0, v8, v11}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI)V

    :goto_6
    iget-object v1, v0, Lcom/artfulbits/aiCharts/Types/a$a;->d:Lcom/artfulbits/aiCharts/Types/a;

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Types/a$a;->a:[F

    iget v3, v0, Lcom/artfulbits/aiCharts/Types/a$a;->b:I

    move-object/from16 v4, p1

    invoke-virtual {v1, v4, v2, v3, v9}, Lcom/artfulbits/aiCharts/Types/a;->drawPolygon(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;[FII)V

    goto :goto_7

    :cond_6
    move-object/from16 v4, p1

    move v9, v6

    move/from16 v20, v15

    const/4 v15, 0x0

    :goto_7
    add-int/lit8 v6, v9, 0x1

    move/from16 v16, v17

    move/from16 v15, v20

    const/4 v7, 0x0

    move-object/from16 v9, p6

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private a([FI)V
    .locals 4

    aget v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    add-int/lit8 p2, p2, 0x2

    aget p1, p1, p2

    iget p2, p0, Lcom/artfulbits/aiCharts/Types/a$a;->b:I

    mul-int/lit8 p2, p2, 0x3

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Types/a$a;->a:[F

    add-int/lit8 v3, p2, 0x1

    aput v0, v2, p2

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Types/a$a;->a:[F

    add-int/lit8 v0, v3, 0x1

    aput v1, p2, v3

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Types/a$a;->a:[F

    aput p1, p2, v0

    iget p1, p0, Lcom/artfulbits/aiCharts/Types/a$a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/artfulbits/aiCharts/Types/a$a;->b:I

    return-void
.end method

.method private static a([FI[FIF[FI)V
    .locals 3

    add-int/lit8 p6, p1, 0x1

    aget v0, p0, p6

    sub-float v0, p4, v0

    add-int/lit8 v1, p3, 0x1

    aget v1, p2, v1

    aget p6, p0, p6

    sub-float/2addr v1, p6

    div-float/2addr v0, v1

    aget p6, p0, p1

    aget v1, p2, p3

    aget v2, p0, p1

    sub-float/2addr v1, v2

    mul-float v1, v1, v0

    add-float/2addr p6, v1

    const/4 v1, 0x0

    aput p6, p5, v1

    const/4 p6, 0x2

    add-int/2addr p1, p6

    aget v1, p0, p1

    add-int/2addr p3, p6

    aget p2, p2, p3

    aget p0, p0, p1

    sub-float/2addr p2, p0

    mul-float v0, v0, p2

    add-float/2addr v1, v0

    aput v1, p5, p6

    const/4 p0, 0x1

    aput p4, p5, p0

    return-void
.end method


# virtual methods
.method public final a(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;[F[F)V
    .locals 17

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    const/4 v0, 0x1

    aget v1, v7, v0

    array-length v2, v7

    div-int/lit8 v2, v2, 0x3

    const/4 v3, 0x0

    move v4, v1

    const/4 v1, 0x1

    const/4 v9, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    mul-int/lit8 v5, v1, 0x3

    add-int/2addr v5, v0

    aget v6, v7, v5

    cmpl-float v6, v6, v4

    if-lez v6, :cond_0

    aget v4, v7, v5

    move v9, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v9, 0x2

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/artfulbits/aiCharts/Types/a$a;->a(II)I

    move-result v1

    add-int/lit8 v4, v9, -0x1

    invoke-static {v4, v2}, Lcom/artfulbits/aiCharts/Types/a$a;->a(II)I

    move-result v4

    add-int/lit8 v5, v9, 0x1

    invoke-static {v5, v2}, Lcom/artfulbits/aiCharts/Types/a$a;->a(II)I

    move-result v5

    mul-int/lit8 v6, v9, 0x3

    add-int/2addr v6, v0

    aget v6, v7, v6

    mul-int/lit8 v10, v1, 0x3

    add-int/2addr v10, v0

    aget v10, v7, v10

    mul-int/lit8 v11, v4, 0x3

    add-int/2addr v11, v0

    aget v11, v7, v11

    mul-int/lit8 v12, v5, 0x3

    add-int/2addr v12, v0

    aget v12, v7, v12

    cmpl-float v13, v10, v11

    if-lez v13, :cond_2

    move v13, v1

    goto :goto_1

    :cond_2
    move v13, v4

    :goto_1
    cmpg-float v14, v10, v11

    if-gtz v14, :cond_3

    move v14, v1

    goto :goto_2

    :cond_3
    move v14, v4

    :goto_2
    cmpl-float v4, v10, v12

    if-lez v4, :cond_4

    move v15, v1

    goto :goto_3

    :cond_4
    move v15, v5

    :goto_3
    cmpg-float v4, v10, v12

    if-gtz v4, :cond_5

    move/from16 v16, v1

    goto :goto_4

    :cond_5
    move/from16 v16, v5

    :goto_4
    cmpl-float v1, v6, v10

    if-nez v1, :cond_8

    cmpl-float v1, v6, v11

    if-nez v1, :cond_8

    cmpl-float v1, v6, v12

    if-nez v1, :cond_8

    aget v1, v8, v3

    :goto_5
    array-length v3, v8

    if-ge v0, v3, :cond_7

    aget v3, v8, v0

    cmpl-float v4, v6, v1

    if-ltz v4, :cond_6

    cmpg-float v3, v6, v3

    if-gtz v3, :cond_6

    move-object/from16 v10, p0

    iget-object v1, v10, Lcom/artfulbits/aiCharts/Types/a$a;->d:Lcom/artfulbits/aiCharts/Types/a;

    move-object/from16 v11, p1

    invoke-virtual {v1, v11, v7, v2, v0}, Lcom/artfulbits/aiCharts/Types/a;->drawPolygon(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;[FII)V

    goto :goto_6

    :cond_6
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    move-object/from16 v10, p0

    return-void

    :cond_8
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v9

    move v4, v13

    move v5, v14

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/artfulbits/aiCharts/Types/a$a;->a(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;[FIII[F)V

    move v4, v15

    move/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lcom/artfulbits/aiCharts/Types/a$a;->a(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;[FIII[F)V

    :goto_6
    return-void
.end method
