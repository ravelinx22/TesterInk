.class public Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;
.super Lcom/artfulbits/aiCharts/Annotations/ChartAnnotation;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Ljava/lang/String;

.field private c:Lcom/artfulbits/aiCharts/Enums/Alignment;

.field private d:Lcom/artfulbits/aiCharts/Enums/Alignment;

.field private e:Landroid/text/TextPaint;

.field private f:Landroid/graphics/Paint;

.field private g:Z

.field private h:Z

.field private final i:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v4, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    sget-object v5, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;)V
    .locals 2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotation;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->c:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->d:Lcom/artfulbits/aiCharts/Enums/Alignment;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->e:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->f:Landroid/graphics/Paint;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->g:Z

    iput-boolean v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->h:Z

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->m_description:Ljava/lang/String;

    iput-object p4, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->c:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iput-object p5, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->d:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->e:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->e:Landroid/text/TextPaint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->f:Landroid/graphics/Paint;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;IIILandroid/graphics/Rect;)V
    .locals 3

    div-int/lit8 v0, p3, 0x2

    div-int/lit8 v1, p4, 0x2

    sget-object v2, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation$1;->a:[I

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result p1

    aget p1, v2, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget p1, p0, Landroid/graphics/PointF;->x:F

    int-to-float v0, p5

    add-float/2addr p1, v0

    goto :goto_1

    :pswitch_1
    iget p1, p0, Landroid/graphics/PointF;->x:F

    int-to-float v0, v0

    goto :goto_0

    :pswitch_2
    iget p1, p0, Landroid/graphics/PointF;->x:F

    int-to-float v0, p3

    sub-float/2addr p1, v0

    int-to-float v0, p5

    :goto_0
    sub-float/2addr p1, v0

    :goto_1
    float-to-int p1, p1

    iput p1, p6, Landroid/graphics/Rect;->left:I

    :goto_2
    sget-object p1, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation$1;->a:[I

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_1

    goto :goto_5

    :pswitch_3
    iget p0, p0, Landroid/graphics/PointF;->y:F

    int-to-float p1, p5

    add-float/2addr p0, p1

    goto :goto_4

    :pswitch_4
    iget p0, p0, Landroid/graphics/PointF;->y:F

    int-to-float p1, v1

    goto :goto_3

    :pswitch_5
    iget p0, p0, Landroid/graphics/PointF;->y:F

    int-to-float p1, p4

    sub-float/2addr p0, p1

    int-to-float p1, p5

    :goto_3
    sub-float/2addr p0, p1

    :goto_4
    float-to-int p0, p0

    iput p0, p6, Landroid/graphics/Rect;->top:I

    :goto_5
    iget p0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p4

    iput p0, p6, Landroid/graphics/Rect;->bottom:I

    iget p0, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p3

    iput p0, p6, Landroid/graphics/Rect;->right:I

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


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/artfulbits/aiCharts/Base/ChartEngine;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->getPosition()Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;

    move-result-object v1

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    move-object/from16 v3, p2

    invoke-virtual {v1, v3, v2}, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;->getPin(Lcom/artfulbits/aiCharts/Base/ChartEngine;Landroid/graphics/PointF;)V

    invoke-virtual/range {p2 .. p2}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iget v2, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->m_offset:I

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->e:Landroid/text/TextPaint;

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v5, v3

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->e:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v4, v3

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v3, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    iget v8, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v8

    iget-object v8, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v8, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v4

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    iget-object v9, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move/from16 v16, v8

    goto :goto_0

    :cond_0
    move/from16 v16, v4

    move v3, v5

    :goto_0
    iget-object v8, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget-object v9, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->c:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iget-object v10, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->d:Lcom/artfulbits/aiCharts/Enums/Alignment;

    move v11, v3

    move/from16 v12, v16

    move v13, v2

    move-object v14, v15

    invoke-static/range {v8 .. v14}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a(Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;IIILandroid/graphics/Rect;)V

    iget-boolean v8, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->h:Z

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v14

    iget-object v9, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    int-to-float v8, v8

    cmpg-float v9, v9, v8

    if-gez v9, :cond_1

    iget v9, v15, Landroid/graphics/Rect;->left:I

    iget v10, v1, Landroid/graphics/Rect;->left:I

    if-ge v9, v10, :cond_1

    iget-object v8, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    sget-object v9, Lcom/artfulbits/aiCharts/Enums/Alignment;->Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iget-object v10, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->d:Lcom/artfulbits/aiCharts/Enums/Alignment;

    move v11, v3

    move/from16 v12, v16

    move v13, v2

    move/from16 v17, v4

    move v4, v14

    :goto_1
    move-object v14, v15

    invoke-static/range {v8 .. v14}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a(Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;IIILandroid/graphics/Rect;)V

    goto :goto_2

    :cond_1
    move/from16 v17, v4

    move v4, v14

    iget-object v9, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    cmpl-float v8, v9, v8

    if-lez v8, :cond_2

    iget v8, v15, Landroid/graphics/Rect;->right:I

    iget v9, v1, Landroid/graphics/Rect;->right:I

    if-le v8, v9, :cond_2

    iget-object v8, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    sget-object v9, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iget-object v10, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->d:Lcom/artfulbits/aiCharts/Enums/Alignment;

    move v11, v3

    move/from16 v12, v16

    move v13, v2

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v8, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    int-to-float v4, v4

    cmpg-float v8, v8, v4

    if-gez v8, :cond_3

    iget v8, v15, Landroid/graphics/Rect;->top:I

    iget v9, v1, Landroid/graphics/Rect;->top:I

    if-ge v8, v9, :cond_3

    iget-object v8, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget-object v9, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->c:Lcom/artfulbits/aiCharts/Enums/Alignment;

    sget-object v10, Lcom/artfulbits/aiCharts/Enums/Alignment;->Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

    :goto_3
    move v11, v3

    move/from16 v12, v16

    move v13, v2

    move-object v14, v15

    invoke-static/range {v8 .. v14}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a(Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;IIILandroid/graphics/Rect;)V

    goto :goto_4

    :cond_3
    iget-object v8, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v8, v4

    if-lez v4, :cond_5

    iget v4, v15, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v1, :cond_5

    iget-object v8, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget-object v9, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->c:Lcom/artfulbits/aiCharts/Enums/Alignment;

    sget-object v10, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    goto :goto_3

    :cond_4
    move/from16 v17, v4

    :cond_5
    :goto_4
    iget-boolean v1, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->g:Z

    if-eqz v1, :cond_a

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    iget v3, v15, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_7

    iget v1, v15, Landroid/graphics/Rect;->right:I

    :goto_5
    int-to-float v1, v1

    :cond_6
    move v4, v1

    goto :goto_6

    :cond_7
    iget v3, v15, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    iget v1, v15, Landroid/graphics/Rect;->left:I

    goto :goto_5

    :goto_6
    iget v1, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_8

    iget v1, v15, Landroid/graphics/Rect;->bottom:I

    :goto_7
    int-to-float v1, v1

    move v8, v1

    goto :goto_8

    :cond_8
    iget v1, v15, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_9

    iget v1, v15, Landroid/graphics/Rect;->top:I

    goto :goto_7

    :cond_9
    move v8, v2

    :goto_8
    iget-object v1, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->i:Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->y:F

    iget-object v9, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->f:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v10, v17

    move v11, v5

    move v5, v8

    move-object v8, v6

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_a
    move v11, v5

    move-object v8, v6

    move/from16 v10, v17

    :goto_9
    iget-object v1, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_b
    iget v1, v15, Landroid/graphics/Rect;->left:I

    iget v2, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget v2, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, v15, Landroid/graphics/Rect;->top:I

    iget v3, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v15, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->b:Ljava/lang/String;

    div-int/lit8 v5, v11, 0x2

    sub-int/2addr v1, v5

    int-to-float v1, v1

    div-int/lit8 v4, v10, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->e:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    sub-float/2addr v2, v4

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->e:Landroid/text/TextPaint;

    invoke-virtual {v7, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getConnectorPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->f:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getDrawConnector()Z
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->g:Z

    return v0
.end method

.method public getHorizontalAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->c:Lcom/artfulbits/aiCharts/Enums/Alignment;

    return-object v0
.end method

.method public getSmartPositioning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->h:Z

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->e:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    return v0
.end method

.method public getTextPaint()Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->e:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getVerticalAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->d:Lcom/artfulbits/aiCharts/Enums/Alignment;

    return-object v0
.end method

.method public setAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->setHorizontalAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V

    invoke-virtual {p0, p2}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->setVerticalAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->a:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public setDrawConnector(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->g:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->g:Z

    :cond_0
    return-void
.end method

.method public setHorizontalAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->c:Lcom/artfulbits/aiCharts/Enums/Alignment;

    return-void
.end method

.method public setSmartPositioning(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->h:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->h:Z

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->b:Ljava/lang/String;

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->e:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->e:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setVerticalAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->d:Lcom/artfulbits/aiCharts/Enums/Alignment;

    return-void
.end method
