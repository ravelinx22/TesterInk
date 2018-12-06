.class public final Lcom/artfulbits/aiCharts/Base/ChartAxis;
.super Lcom/artfulbits/aiCharts/Base/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Base/ChartAxis$a;,
        Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;,
        Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelLayoutMode;,
        Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelPosition;,
        Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;,
        Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;,
        Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;,
        Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;,
        Lcom/artfulbits/aiCharts/Base/ChartAxis$ScaleChangeListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_LABELS_ADAPTER:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;

.field public static final SERIES_LABELS_ADAPTER:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;

.field public static final SMART_LABELS_ADAPTER:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;

.field static final a:I

.field private static b:I

.field private static c:I


# instance fields
.field private A:Z

.field private B:Lcom/artfulbits/aiCharts/Base/ChartAxis$ScaleChangeListener;

.field private C:I

.field private D:I

.field private E:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelLayoutMode;

.field private final F:Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;

.field private final G:Lcom/artfulbits/aiCharts/Base/k;

.field private final H:Landroid/graphics/RectF;

.field private d:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelPosition;

.field protected dimention:F

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/artfulbits/aiCharts/Base/ChartCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCollection<",
            "Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/artfulbits/aiCharts/Base/ChartCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCollection<",
            "Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/graphics/RectF;

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Paint;

.field private final k:Landroid/text/TextPaint;

.field private l:Lcom/artfulbits/aiCharts/Enums/Alignment;

.field protected labelsDimention:F

.field private m:Lcom/artfulbits/aiCharts/Enums/Alignment;

.field private n:D

.field private o:I

.field private p:I

.field private q:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

.field private r:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

.field private s:Z

.field private t:Lcom/artfulbits/aiCharts/Base/ChartArea;

.field private final u:Lcom/artfulbits/aiCharts/Base/e;

.field private v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

.field private final w:Lcom/artfulbits/aiCharts/Base/n;

.field private x:I

.field private y:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;->Double:Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;->ordinal()I

    move-result v0

    sput v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->b:I

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;->Date:Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;->ordinal()I

    move-result v0

    sput v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->a:I

    const/4 v0, 0x4

    sput v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->c:I

    new-instance v0, Lcom/artfulbits/aiCharts/Base/b;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/b;-><init>()V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->DEFAULT_LABELS_ADAPTER:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/c;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/c;-><init>()V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->SERIES_LABELS_ADAPTER:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/d;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/d;-><init>()V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->SMART_LABELS_ADAPTER:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;

    return-void
.end method

.method public constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;)V
    .locals 3

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/f;-><init>()V

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelPosition;->Outside:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelPosition;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelPosition;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->f:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->g:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->h:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->i:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->j:Landroid/graphics/Paint;

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->k:Landroid/text/TextPaint;

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->l:Lcom/artfulbits/aiCharts/Enums/Alignment;

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->m:Lcom/artfulbits/aiCharts/Enums/Alignment;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->n:D

    const/4 v1, 0x4

    iput v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->o:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->p:I

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;->Inner:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->q:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->Bottom:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->r:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->s:Z

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->t:Lcom/artfulbits/aiCharts/Base/ChartArea;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/n;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-direct {v0, v2}, Lcom/artfulbits/aiCharts/Base/n;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->w:Lcom/artfulbits/aiCharts/Base/n;

    sget v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->b:I

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->x:I

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->DEFAULT_LABELS_ADAPTER:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->y:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;

    iput-boolean v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->z:Z

    iput-boolean v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->A:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->C:I

    iput v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->D:I

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelLayoutMode;->Default:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelLayoutMode;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->E:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelLayoutMode;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/k;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/k;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->G:Lcom/artfulbits/aiCharts/Base/k;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->H:Landroid/graphics/RectF;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-direct {v0, p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;-><init>(Lcom/artfulbits/aiCharts/Base/ChartAxis;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/e;

    invoke-direct {v0, p0}, Lcom/artfulbits/aiCharts/Base/e;-><init>(Lcom/artfulbits/aiCharts/Base/ChartAxis;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->u:Lcom/artfulbits/aiCharts/Base/e;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;

    invoke-direct {v0, p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;-><init>(Lcom/artfulbits/aiCharts/Base/ChartAxis;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->F:Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->setPosition(Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->k:Landroid/text/TextPaint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->k:Landroid/text/TextPaint;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->w:Lcom/artfulbits/aiCharts/Base/n;

    iget-object p1, p1, Lcom/artfulbits/aiCharts/Base/n;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->w:Lcom/artfulbits/aiCharts/Base/n;

    iget-object p1, p1, Lcom/artfulbits/aiCharts/Base/n;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->i:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->j:Landroid/graphics/Paint;

    const v0, -0x777778

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->j:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Lcom/artfulbits/aiCharts/Base/ChartCollection;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$1;

    invoke-direct {v0, p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis$1;-><init>(Lcom/artfulbits/aiCharts/Base/ChartAxis;)V

    invoke-direct {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartCollection;-><init>(Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;)V

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->g:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    new-instance p1, Lcom/artfulbits/aiCharts/Base/ChartCollection;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$2;

    invoke-direct {v0, p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis$2;-><init>(Lcom/artfulbits/aiCharts/Base/ChartAxis;)V

    invoke-direct {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartCollection;-><init>(Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;)V

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->f:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    return-void
.end method

.method private a(Ljava/util/List;ZFFFLcom/artfulbits/aiCharts/Enums/Alignment;)F
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;",
            ">;ZFFF",
            "Lcom/artfulbits/aiCharts/Enums/Alignment;",
            ")F"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x4

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    const/4 v6, 0x5

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    if-eqz p2, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [I

    :goto_0
    sget-object v8, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-object/from16 v9, p6

    invoke-static {v9, v8}, Lcom/artfulbits/aiCharts/Base/a;->a(Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;)I

    move-result v8

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    const/4 v13, 0x1

    if-ge v11, v9, :cond_5

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;

    iput-boolean v13, v14, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->visible:Z

    if-eqz p2, :cond_1

    invoke-virtual {v14, v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->measure(Lcom/artfulbits/aiCharts/Base/ChartAxis;)V

    :cond_1
    iget-object v13, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move/from16 v16, v11

    iget-wide v10, v14, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Position:D

    invoke-virtual {v13, v10, v11}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->valueToCoefficient(D)D

    move-result-wide v10

    move/from16 v17, v12

    float-to-double v12, v3

    move/from16 v18, v8

    move/from16 v19, v9

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v8

    double-to-float v8, v12

    const/4 v9, 0x0

    :goto_2
    sget v10, Lcom/artfulbits/aiCharts/Base/ChartAxis;->c:I

    if-ge v9, v10, :cond_3

    aget v10, v5, v9

    cmpg-float v10, v10, v8

    if-gez v10, :cond_2

    move v12, v9

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    move/from16 v12, v17

    :goto_3
    iget v9, v14, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->width:F

    add-float/2addr v8, v9

    aput v8, v5, v12

    aget v8, v6, v12

    iget v9, v14, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->height:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    aput v8, v6, v12

    if-nez p2, :cond_4

    aput v12, v7, v16

    :cond_4
    add-int/lit8 v11, v16, 0x1

    move/from16 v8, v18

    move/from16 v9, v19

    goto :goto_1

    :cond_5
    move/from16 v18, v8

    const/4 v5, 0x1

    :goto_4
    array-length v8, v6

    if-ge v5, v8, :cond_6

    aget v8, v6, v5

    add-int/lit8 v9, v5, -0x1

    aget v9, v6, v9

    add-float/2addr v8, v9

    aput v8, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    if-nez p2, :cond_7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v2, :cond_7

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;

    iget-object v8, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    iget-wide v9, v5, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Position:D

    invoke-virtual {v8, v9, v10}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->valueToCoefficient(D)D

    move-result-wide v8

    float-to-double v10, v3

    float-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v8

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v13

    double-to-float v8, v10

    aget v9, v7, v15

    aget v9, v6, v9

    add-float v9, p5, v9

    move/from16 v11, v18

    invoke-virtual {v5, v8, v9, v11}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->a(FFI)V

    add-int/lit8 v15, v15, 0x1

    const/4 v13, 0x1

    goto :goto_5

    :cond_7
    array-length v1, v6

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v1, v6, v1

    return v1

    :array_0
    .array-data 4
        -0x800001
        -0x800001
        -0x800001
        -0x800001
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic a(Lcom/artfulbits/aiCharts/Base/ChartAxis;I)I
    .locals 0

    iget p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->D:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->D:I

    return p1
.end method

.method static synthetic a(Lcom/artfulbits/aiCharts/Base/ChartAxis;)Lcom/artfulbits/aiCharts/Base/k;
    .locals 0

    iget-object p0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->G:Lcom/artfulbits/aiCharts/Base/k;

    return-object p0
.end method

.method static synthetic a(Lcom/artfulbits/aiCharts/Base/ChartAxis;Ljava/util/List;)V
    .locals 5

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->createIterator()Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;

    move-result-object v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->u:Lcom/artfulbits/aiCharts/Base/e;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/e;->b()V

    :cond_0
    invoke-interface {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;->current()D

    move-result-wide v1

    new-instance v3, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->u:Lcom/artfulbits/aiCharts/Base/e;

    invoke-virtual {v4, v1, v2}, Lcom/artfulbits/aiCharts/Base/e;->a(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;-><init>(Ljava/lang/String;D)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;->next()Z

    move-result v1

    if-nez v1, :cond_0

    return-void
.end method

.method private a()Z
    .locals 6

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->F:Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getZoomSize()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getRealSize()D

    move-result-wide v4

    cmpg-double v0, v2, v4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method static synthetic b(Lcom/artfulbits/aiCharts/Base/ChartAxis;)Landroid/text/TextPaint;
    .locals 0

    iget-object p0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->k:Landroid/text/TextPaint;

    return-object p0
.end method

.method private b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->D:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->D:I

    xor-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->D:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->y:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->y:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->e:Ljava/util/ArrayList;

    invoke-interface {v0, p0, v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;->updateLabels(Lcom/artfulbits/aiCharts/Base/ChartAxis;Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->f:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/artfulbits/aiCharts/Base/ChartAxis;Ljava/util/List;)V
    .locals 6

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->u:Lcom/artfulbits/aiCharts/Base/e;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/e;->b()V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->t:Lcom/artfulbits/aiCharts/Base/ChartArea;

    iget-object v1, v1, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_visibleSeries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getAxisLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->u:Lcom/artfulbits/aiCharts/Base/e;

    invoke-virtual {v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/e;->a(D)Ljava/lang/String;

    move-result-object v1

    :cond_3
    new-instance v4, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;

    invoke-direct {v4, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;-><init>(Ljava/lang/String;D)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method static synthetic c(Lcom/artfulbits/aiCharts/Base/ChartAxis;Ljava/util/List;)V
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->computeInterval()D

    move-result-wide v1

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->u:Lcom/artfulbits/aiCharts/Base/e;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/e;->b()V

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->t:Lcom/artfulbits/aiCharts/Base/ChartArea;

    iget-object v3, v3, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_visibleSeries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-wide v3, -0x10000000000001L

    sget-object v5, Lcom/artfulbits/aiCharts/Base/ChartPoint;->X_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v6

    sub-double v8, v6, v3

    cmpl-double v10, v8, v1

    if-ltz v10, :cond_2

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getAxisLabel()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->u:Lcom/artfulbits/aiCharts/Base/e;

    invoke-virtual {v3, v6, v7}, Lcom/artfulbits/aiCharts/Base/e;->a(D)Ljava/lang/String;

    move-result-object v3

    :cond_3
    new-instance v4, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;

    invoke-direct {v4, v3, v6, v7}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;-><init>(Ljava/lang/String;D)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v3, v6

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected static isIntersects(Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;)Z
    .locals 3

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->X:F

    iget v1, p1, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->X:F

    iget v2, p1, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->width:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->X:F

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->X:F

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->width:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Y:F

    iget v1, p1, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Y:F

    iget v2, p1, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->height:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget p1, p1, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Y:F

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Y:F

    iget p0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->height:F

    add-float/2addr v0, p0

    cmpg-float p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final coeficientToValue(D)D
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {v0, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->coefficientToValue(D)D

    move-result-wide p1

    return-wide p1
.end method

.method protected final drawCartesian(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->r:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    iget-boolean v1, v1, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->IsOpposed:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v8, -0x40800000    # -1.0f

    :goto_0
    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->r:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    iget-boolean v9, v1, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->IsVertical:Z

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelPosition;

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelPosition;->Outside:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelPosition;

    const/4 v10, 0x0

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->q:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;->None:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    if-eqz v9, :cond_2

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    :goto_2
    move v12, v1

    move v13, v2

    goto :goto_3

    :cond_2
    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    goto :goto_2

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->a()Z

    move-result v1

    const/4 v14, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->F:Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;

    invoke-virtual {v1, v9}, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->a(Z)F

    move-result v1

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    :goto_4
    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartAxis$3;->a:[I

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->r:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const/4 v15, 0x0

    goto :goto_8

    :pswitch_0
    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    goto :goto_5

    :pswitch_1
    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    :goto_5
    iget v3, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->p:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, v1

    goto :goto_7

    :pswitch_2
    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_6

    :pswitch_3
    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    :goto_6
    iget v3, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->p:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v1

    :goto_7
    move v15, v2

    :goto_8
    if-eqz v9, :cond_4

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->i:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v15

    move v3, v12

    move v4, v15

    move v5, v13

    :goto_9
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_a

    :cond_4
    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->i:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move v4, v13

    move v5, v15

    goto :goto_9

    :goto_a
    if-eqz v11, :cond_5

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxis$3;->b:[I

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->q:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_c

    :pswitch_4
    iget v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->o:I

    int-to-float v1, v1

    add-float/2addr v1, v15

    iget v2, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->o:I

    int-to-float v2, v2

    sub-float/2addr v15, v2

    goto :goto_b

    :pswitch_5
    iget v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->o:I

    int-to-float v1, v1

    mul-float v8, v8, v1

    sub-float v1, v15, v8

    :goto_b
    move v14, v1

    goto :goto_d

    :pswitch_6
    iget v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->o:I

    int-to-float v1, v1

    mul-float v8, v8, v1

    add-float/2addr v8, v15

    move v14, v8

    goto :goto_d

    :cond_5
    :goto_c
    const/4 v15, 0x0

    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->F:Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;

    invoke-virtual {v1, v7}, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->a(Landroid/graphics/Canvas;)V

    :cond_6
    iget-boolean v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->z:Z

    if-eqz v1, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->b()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    :goto_e
    if-ge v10, v6, :cond_a

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;

    iget-boolean v1, v5, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->visible:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    iget-wide v2, v5, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Position:D

    invoke-virtual {v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->contains(D)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v11, :cond_8

    float-to-double v1, v12

    sub-float v3, v13, v12

    float-to-double v3, v3

    move/from16 v16, v6

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move/from16 v17, v11

    move/from16 v18, v12

    iget-wide v11, v5, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Position:D

    invoke-virtual {v6, v11, v12}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->valueToCoefficient(D)D

    move-result-wide v11

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v11

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    double-to-float v6, v1

    if-eqz v9, :cond_7

    iget-object v11, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->i:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v15

    move v3, v6

    move v4, v14

    move-object v12, v5

    move v5, v6

    :goto_f
    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_10

    :cond_7
    move-object v12, v5

    iget-object v11, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->i:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v6

    move v3, v15

    move v4, v6

    move v5, v14

    goto :goto_f

    :cond_8
    move/from16 v16, v6

    move/from16 v17, v11

    move/from16 v18, v12

    move-object v12, v5

    :goto_10
    invoke-virtual {v12, v7, v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->a(Landroid/graphics/Canvas;Lcom/artfulbits/aiCharts/Base/ChartAxis;)V

    goto :goto_11

    :cond_9
    move/from16 v16, v6

    move/from16 v17, v11

    move/from16 v18, v12

    :goto_11
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v16

    move/from16 v11, v17

    move/from16 v12, v18

    goto :goto_e

    :cond_a
    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->w:Lcom/artfulbits/aiCharts/Base/n;

    invoke-virtual {v1, v7}, Lcom/artfulbits/aiCharts/Base/n;->a(Landroid/graphics/Canvas;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method protected final drawCartesianGrid(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 13

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->r:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    iget-boolean v0, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->IsVertical:Z

    if-eqz v0, :cond_0

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget p2, p2, Landroid/graphics/Rect;->right:I

    :goto_0
    int-to-float p2, p2

    move v9, p2

    move p2, v3

    goto :goto_1

    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :goto_1
    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->y:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;

    sget-object v4, Lcom/artfulbits/aiCharts/Base/ChartAxis;->DEFAULT_LABELS_ADAPTER:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;

    if-eq v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->isPrimaryAxis()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    iget-wide v5, v3, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Position:D

    invoke-virtual {v4, v5, v6}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->contains(D)Z

    move-result v4

    if-eqz v4, :cond_1

    float-to-double v4, v1

    float-to-double v6, v2

    iget-object v8, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    iget-wide v11, v3, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Position:D

    invoke-virtual {v8, v11, v12}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->valueToCoefficient(D)D

    move-result-wide v11

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v11

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v6

    double-to-float v7, v4

    if-eqz v0, :cond_2

    iget-object v8, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->j:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, p2

    move v5, v7

    move v6, v9

    :goto_3
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    iget-object v8, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->j:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v7

    move v5, p2

    move v6, v7

    move v7, v9

    goto :goto_3

    :cond_3
    return-void

    :cond_4
    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->createIterator()Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;

    move-result-object v10

    :cond_5
    invoke-interface {v10}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;->current()D

    move-result-wide v3

    iget-object v5, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {v5, v3, v4}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->contains(D)Z

    move-result v5

    if-eqz v5, :cond_7

    float-to-double v5, v1

    float-to-double v7, v2

    iget-object v11, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {v11, v3, v4}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->valueToCoefficient(D)D

    move-result-wide v3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v7

    double-to-float v7, v5

    if-eqz v0, :cond_6

    iget-object v8, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->j:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, p2

    move v5, v7

    move v6, v9

    :goto_4
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_6
    iget-object v8, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->j:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v7

    move v5, p2

    move v6, v7

    move v7, v9

    goto :goto_4

    :cond_7
    :goto_5
    invoke-interface {v10}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;->next()Z

    move-result v3

    if-nez v3, :cond_5

    return-void
.end method

.method protected final drawPolar(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->z:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->h:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->h:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->h:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->h:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sget-object v5, Lcom/artfulbits/aiCharts/Base/ChartAxis$3;->b:[I

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->q:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :goto_0
    move v5, v2

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    iget v5, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->o:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    iget v6, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->o:I

    int-to-float v6, v6

    add-float/2addr v2, v6

    move/from16 v17, v5

    move v5, v2

    move/from16 v2, v17

    goto :goto_1

    :pswitch_2
    iget v5, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->o:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    goto :goto_1

    :pswitch_3
    iget v5, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->o:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->b()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;

    if-eqz v1, :cond_0

    iget-object v8, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    iget-wide v9, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Position:D

    invoke-static {v8, v9, v10}, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->a(Lcom/artfulbits/aiCharts/Base/ChartAxisScale;D)F

    move-result v8

    invoke-static {v8}, Landroid/util/FloatMath;->sin(F)F

    move-result v9

    invoke-static {v8}, Landroid/util/FloatMath;->cos(F)F

    move-result v8

    mul-float v10, v2, v8

    add-float v12, v3, v10

    mul-float v10, v2, v9

    add-float v13, v4, v10

    mul-float v8, v8, v5

    add-float v14, v3, v8

    mul-float v9, v9, v5

    add-float v15, v4, v9

    iget-object v8, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->i:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v8

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    move-object/from16 v8, p1

    invoke-virtual {v7, v8, v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->a(Landroid/graphics/Canvas;Lcom/artfulbits/aiCharts/Base/ChartAxis;)V

    goto :goto_2

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final drawPolarXGrid(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->createIterator()Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v8, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v9, v2, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, v3

    :cond_0
    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-interface {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;->current()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->a(Lcom/artfulbits/aiCharts/Base/ChartAxisScale;D)F

    move-result v2

    float-to-double v2, v2

    float-to-double v4, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-float v4, v4

    add-float v5, v1, v4

    float-to-double v6, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v2

    double-to-float v2, v6

    add-float v6, v8, v2

    iget-object v7, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->j:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v1

    move v4, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-interface {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;->next()Z

    move-result v2

    if-nez v2, :cond_0

    return-void
.end method

.method protected final drawPolarYGrid(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 11

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->createIterator()Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, v4

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    :cond_0
    invoke-interface {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;->current()D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->valueToCoeficient(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v5, v4, v3

    sub-float v6, v1, v5

    mul-float v4, v4, p2

    sub-float v7, v2, v4

    add-float/2addr v5, v1

    add-float/2addr v4, v2

    invoke-virtual {v10, v6, v7, v5, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v6, 0x0

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->j:Landroid/graphics/Paint;

    move-object v4, p1

    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-interface {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;->next()Z

    move-result v4

    if-nez v4, :cond_0

    return-void
.end method

.method protected final drawRadarYGrid(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartAxis;)V
    .locals 11

    invoke-virtual {p3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->createIterator()Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;

    move-result-object v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->createIterator()Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v4, v4, v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, v5

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    const/4 v6, 0x1

    const/4 v7, 0x1

    :cond_0
    invoke-virtual {p3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v8

    invoke-interface {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;->current()D

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->a(Lcom/artfulbits/aiCharts/Base/ChartAxisScale;D)F

    move-result v8

    if-eqz v7, :cond_1

    invoke-static {v8}, Landroid/util/FloatMath;->cos(F)F

    move-result v7

    invoke-static {v8}, Landroid/util/FloatMath;->sin(F)F

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v8}, Landroid/util/FloatMath;->cos(F)F

    move-result v9

    invoke-static {v8}, Landroid/util/FloatMath;->sin(F)F

    move-result v8

    invoke-virtual {v5, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    invoke-interface {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;->next()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    :cond_2
    invoke-interface {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;->current()D

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->valueToCoeficient(D)D

    move-result-wide v7

    double-to-float p3, v7

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    mul-float v0, p3, v4

    mul-float p3, p3, p2

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p3, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-interface {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;->next()Z

    move-result p3

    if-nez p3, :cond_2

    return-void
.end method

.method protected final drawStriplines(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->g:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;

    invoke-virtual {v3, p1, p2, p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartAxis;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method protected final getArea()Lcom/artfulbits/aiCharts/Base/ChartArea;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->t:Lcom/artfulbits/aiCharts/Base/ChartArea;

    return-object v0
.end method

.method public final getBounds()Landroid/graphics/RectF;
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->h:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method protected final getChart()Lcom/artfulbits/aiCharts/Base/ChartEngine;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->t:Lcom/artfulbits/aiCharts/Base/ChartArea;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->t:Lcom/artfulbits/aiCharts/Base/ChartArea;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getChart()Lcom/artfulbits/aiCharts/Base/ChartEngine;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomLabels()Lcom/artfulbits/aiCharts/Base/ChartCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/artfulbits/aiCharts/Base/ChartCollection<",
            "Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->f:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    return-object v0
.end method

.method public final getFormat()Ljava/text/Format;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->u:Lcom/artfulbits/aiCharts/Base/e;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/e;->a()Ljava/text/Format;

    move-result-object v0

    return-object v0
.end method

.method protected final getGridClipPath(Landroid/graphics/Rect;Z)Landroid/graphics/Path;
    .locals 7

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float p1, p1, v3

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->createIterator()Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;

    move-result-object p2

    const/4 v3, 0x1

    :cond_0
    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-interface {p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;->current()D

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->a(Lcom/artfulbits/aiCharts/Base/ChartAxisScale;D)F

    move-result v4

    invoke-static {v4}, Landroid/util/FloatMath;->cos(F)F

    move-result v5

    mul-float v5, v5, p1

    add-float/2addr v5, v1

    invoke-static {v4}, Landroid/util/FloatMath;->sin(F)F

    move-result v4

    mul-float v4, v4, p1

    add-float/2addr v4, v2

    if-eqz v3, :cond_1

    invoke-virtual {v0, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    invoke-interface {p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;->next()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_2
    sget-object p2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-object v0
.end method

.method public final getGridLinePaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->j:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getGridVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->s:Z

    return v0
.end method

.method public final getLabelAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->l:Lcom/artfulbits/aiCharts/Enums/Alignment;

    return-object v0
.end method

.method public final getLabelAngle()F
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->G:Lcom/artfulbits/aiCharts/Base/k;

    iget v0, v0, Lcom/artfulbits/aiCharts/Base/k;->a:F

    return v0
.end method

.method public final getLabelFormat()Ljava/text/Format;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->u:Lcom/artfulbits/aiCharts/Base/e;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/e;->a()Ljava/text/Format;

    move-result-object v0

    return-object v0
.end method

.method public final getLabelLayoutMode()Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelLayoutMode;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->E:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelLayoutMode;

    return-object v0
.end method

.method public final getLabelPaint()Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->k:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getLabelPosition()Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelPosition;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelPosition;

    return-object v0
.end method

.method public final getLabelsAdapter()Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->y:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;

    return-object v0
.end method

.method public final getLinePaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->i:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getOrigin()D
    .locals 5

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->n:D

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getRealMaximum()D

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->n:D

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getRealMinimum()D

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->n:D

    return-wide v0
.end method

.method public final getPadding()I
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->p:I

    return v0
.end method

.method public final getPosition()Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->r:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    return-object v0
.end method

.method public final getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    return-object v0
.end method

.method public final getScaleChangeListener()Lcom/artfulbits/aiCharts/Base/ChartAxis$ScaleChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->B:Lcom/artfulbits/aiCharts/Base/ChartAxis$ScaleChangeListener;

    return-object v0
.end method

.method public final getScrollBar()Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->F:Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;

    return-object v0
.end method

.method public final getShowLabels()Z
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->z:Z

    return v0
.end method

.method public final getSpacing()I
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->C:I

    return v0
.end method

.method public final getStripLines()Lcom/artfulbits/aiCharts/Base/ChartCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/artfulbits/aiCharts/Base/ChartCollection<",
            "Lcom/artfulbits/aiCharts/Base/ChartAxisStripLine;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->g:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    return-object v0
.end method

.method public final getTickMarkMode()Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->q:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    return-object v0
.end method

.method public final getTickMarkSize()I
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->o:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->w:Lcom/artfulbits/aiCharts/Base/n;

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitleAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->m:Lcom/artfulbits/aiCharts/Enums/Alignment;

    return-object v0
.end method

.method public final getTitlePaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->w:Lcom/artfulbits/aiCharts/Base/n;

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/n;->b:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getValueType()Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;
    .locals 2

    invoke-static {}, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;->values()[Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

    move-result-object v0

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->x:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected final getValueTypeInternal()I
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->x:I

    return v0
.end method

.method protected final inflateAttributes(Landroid/content/res/Resources;Ljava/lang/String;ILandroid/util/AttributeSet;)V
    .locals 0

    const-string p1, "format"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->u:Lcom/artfulbits/aiCharts/Base/e;

    new-instance p2, Ljava/text/MessageFormat;

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/artfulbits/aiCharts/Base/e;->a(Ljava/text/Format;)V

    return-void

    :cond_0
    const-string p1, "position"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->valueOf(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    move-result-object p1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->r:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    return-void

    :cond_1
    const-string p1, "inverted"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->isInverted()Z

    move-result p2

    invoke-interface {p4, p3, p2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setInverted(Z)V

    return-void

    :cond_2
    const-string p1, "visible"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->A:Z

    invoke-interface {p4, p3, p1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->A:Z

    return-void

    :cond_3
    const-string p1, "title"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->w:Lcom/artfulbits/aiCharts/Base/n;

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/artfulbits/aiCharts/Base/n;->a:Ljava/lang/String;

    return-void

    :cond_4
    const-string p1, "padding"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->p:I

    invoke-interface {p4, p3, p1}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result p1

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->p:I

    return-void

    :cond_5
    const-string p1, "spacing"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->C:I

    invoke-interface {p4, p3, p1}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result p1

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->C:I

    return-void

    :cond_6
    const-string p1, "valuetype"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;->valueOf(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->x:I

    return-void

    :cond_7
    const-string p1, "scale_min"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-static {p1}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide p3

    long-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setMinimum(Ljava/lang/Double;)V

    sget-object p2, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;->Date:Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;->ordinal()I

    move-result p2

    iput p2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p2

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setMinimum(Ljava/lang/Double;)V

    return-void

    :cond_8
    const-string p1, "scale_max"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    :try_start_1
    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-static {p1}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide p3

    long-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setMaximum(Ljava/lang/Double;)V

    sget-object p2, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;->Date:Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;->ordinal()I

    move-result p2

    iput p2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->x:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception p2

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setMaximum(Ljava/lang/Double;)V

    return-void

    :cond_9
    const-string p1, "scale_interval"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setInterval(Ljava/lang/Double;)V

    return-void

    :cond_a
    const-string p1, "scale_intervalType"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-static {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->valueOf(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setIntervalType(Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;)V

    return-void

    :cond_b
    const-string p1, "grid_visible"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->s:Z

    invoke-interface {p4, p3, p1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->s:Z

    return-void

    :cond_c
    const-string p1, "grid_lienscolor"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->setGridLineColor(I)V

    return-void

    :cond_d
    const-string p1, "labels_mode"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "NoLabels"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->y:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;

    goto :goto_1

    :cond_e
    const-string p2, "RangeLabels"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    sget-object p1, Lcom/artfulbits/aiCharts/Base/ChartAxis;->DEFAULT_LABELS_ADAPTER:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;

    goto :goto_0

    :cond_f
    const-string p2, "SeriesLabels"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_10

    sget-object p1, Lcom/artfulbits/aiCharts/Base/ChartAxis;->SERIES_LABELS_ADAPTER:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;

    goto :goto_0

    :cond_10
    const-string p2, "HybridLabels"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    sget-object p1, Lcom/artfulbits/aiCharts/Base/ChartAxis;->SMART_LABELS_ADAPTER:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->y:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;

    :cond_11
    return-void

    :cond_12
    const-string p1, "labels_visible"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->z:Z

    invoke-interface {p4, p3, p1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->z:Z

    return-void

    :cond_13
    const-string p1, "ticks_mode"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;->valueOf(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    move-result-object p1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->q:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    return-void

    :cond_14
    const-string p1, "ticks_size"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->o:I

    invoke-interface {p4, p3, p1}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result p1

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->o:I

    :cond_15
    :goto_1
    return-void
.end method

.method protected final invalidate(I)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->t:Lcom/artfulbits/aiCharts/Base/ChartArea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->t:Lcom/artfulbits/aiCharts/Base/ChartArea;

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartArea;->invalidate(I)V

    :cond_0
    return-void
.end method

.method protected final isIndexed()Z
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->t:Lcom/artfulbits/aiCharts/Base/ChartArea;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->t:Lcom/artfulbits/aiCharts/Base/ChartArea;

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->t:Lcom/artfulbits/aiCharts/Base/ChartArea;

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getActualXAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object v0

    if-eq v0, p0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->t:Lcom/artfulbits/aiCharts/Base/ChartArea;

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isIndexed()Z

    move-result v0

    return v0
.end method

.method public final isInverted()Z
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->isInverted()Z

    move-result v0

    return v0
.end method

.method protected final isPrimaryAxis()Z
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->t:Lcom/artfulbits/aiCharts/Base/ChartArea;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->t:Lcom/artfulbits/aiCharts/Base/ChartArea;

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->t:Lcom/artfulbits/aiCharts/Base/ChartArea;

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getActualXAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object v0

    if-ne v0, p0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public final isScrollBarEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->F:Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->A:Z

    return v0
.end method

.method protected final layoutCartesian(FFFF)V
    .locals 18

    move-object/from16 v7, p0

    move/from16 v6, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    iget-object v0, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v6, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->r:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    iget-boolean v0, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->IsOpposed:Z

    iget-object v1, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->r:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    iget-boolean v5, v1, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->IsVertical:Z

    invoke-direct/range {p0 .. p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->a()Z

    move-result v1

    sget-object v2, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iget v3, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->C:I

    int-to-float v3, v3

    sget-object v4, Lcom/artfulbits/aiCharts/Base/ChartAxis$3;->c:[I

    iget-object v11, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelPosition;

    invoke-virtual {v11}, Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelPosition;->ordinal()I

    move-result v11

    aget v4, v4, v11

    const/4 v11, 0x0

    packed-switch v4, :pswitch_data_0

    :goto_0
    move-object v13, v2

    move v12, v3

    const/4 v4, 0x0

    goto :goto_4

    :pswitch_0
    if-eqz v0, :cond_0

    sget-object v2, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/artfulbits/aiCharts/Enums/Alignment;->Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

    :goto_1
    iget v4, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->C:I

    neg-int v4, v4

    int-to-float v4, v4

    goto :goto_3

    :pswitch_1
    sget-object v2, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iget v4, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->labelsDimention:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v4, v12

    add-float/2addr v3, v4

    goto :goto_0

    :pswitch_2
    iget v2, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->labelsDimention:F

    add-float/2addr v3, v2

    if-eqz v0, :cond_1

    sget-object v2, Lcom/artfulbits/aiCharts/Enums/Alignment;->Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

    goto :goto_2

    :cond_1
    sget-object v2, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    :goto_2
    iget v4, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->C:I

    int-to-float v4, v4

    iget-object v12, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->q:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    sget-object v13, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;->Outer:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    if-eq v12, v13, :cond_2

    iget-object v12, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->q:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    sget-object v13, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;->None:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    if-eq v12, v13, :cond_2

    iget v12, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->o:I

    int-to-float v12, v12

    add-float/2addr v4, v12

    :cond_2
    :goto_3
    move-object v13, v2

    move v12, v3

    :goto_4
    if-eqz v0, :cond_3

    iget v0, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->p:I

    :goto_5
    int-to-float v0, v0

    goto :goto_6

    :cond_3
    iget v0, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->p:I

    neg-int v0, v0

    goto :goto_5

    :goto_6
    add-float/2addr v4, v0

    if-eqz v1, :cond_4

    iget-object v0, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->F:Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;

    invoke-virtual {v0, v5}, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->a(Z)F

    move-result v11

    :cond_4
    add-float v14, v4, v11

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$3;->a:[I

    iget-object v2, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->r:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v15, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_1

    const/4 v10, 0x0

    if-eqz v1, :cond_8

    iget-object v0, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->F:Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;

    add-float v4, v8, v11

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->a(FFFFZ)V

    goto/16 :goto_a

    :pswitch_3
    if-eqz v1, :cond_5

    iget-object v0, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->F:Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;

    add-float v3, v6, v11

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v9, 0x0

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->a(FFFFZ)V

    goto :goto_7

    :cond_5
    const/4 v9, 0x0

    :goto_7
    add-float v0, v6, v14

    iget-object v1, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->w:Lcom/artfulbits/aiCharts/Base/n;

    const/4 v2, 0x2

    iput v2, v1, Lcom/artfulbits/aiCharts/Base/n;->e:I

    iget-object v1, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->H:Landroid/graphics/RectF;

    add-float/2addr v12, v0

    invoke-virtual {v1, v12, v8, v12, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->w:Lcom/artfulbits/aiCharts/Base/n;

    iget-object v2, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->H:Landroid/graphics/RectF;

    sget-object v3, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    goto :goto_8

    :pswitch_4
    const/4 v8, 0x0

    if-eqz v1, :cond_6

    iget-object v0, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->F:Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;

    sub-float v2, v10, v11

    move/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->a(FFFFZ)V

    :cond_6
    sub-float v0, v10, v14

    iget-object v1, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->w:Lcom/artfulbits/aiCharts/Base/n;

    iput v8, v1, Lcom/artfulbits/aiCharts/Base/n;->e:I

    iget-object v1, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->H:Landroid/graphics/RectF;

    sub-float v2, v0, v12

    invoke-virtual {v1, v6, v2, v9, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->w:Lcom/artfulbits/aiCharts/Base/n;

    iget-object v2, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->H:Landroid/graphics/RectF;

    iget-object v3, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->m:Lcom/artfulbits/aiCharts/Enums/Alignment;

    sget-object v4, Lcom/artfulbits/aiCharts/Enums/Alignment;->Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

    goto :goto_9

    :pswitch_5
    const/4 v6, 0x0

    if-eqz v1, :cond_7

    iget-object v0, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->F:Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;

    sub-float v1, v9, v11

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->a(FFFFZ)V

    :cond_7
    sub-float v0, v9, v14

    iget-object v1, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->w:Lcom/artfulbits/aiCharts/Base/n;

    iput v15, v1, Lcom/artfulbits/aiCharts/Base/n;->e:I

    iget-object v1, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->H:Landroid/graphics/RectF;

    sub-float v2, v0, v12

    invoke-virtual {v1, v2, v8, v2, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->w:Lcom/artfulbits/aiCharts/Base/n;

    iget-object v2, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->H:Landroid/graphics/RectF;

    sget-object v3, Lcom/artfulbits/aiCharts/Enums/Alignment;->Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

    :goto_8
    iget-object v4, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->m:Lcom/artfulbits/aiCharts/Enums/Alignment;

    :goto_9
    invoke-virtual {v1, v2, v3, v4}, Lcom/artfulbits/aiCharts/Base/n;->a(Landroid/graphics/RectF;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;)V

    move v5, v0

    const/4 v10, 0x0

    goto :goto_b

    :cond_8
    :goto_a
    add-float v0, v8, v14

    iget-object v1, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->w:Lcom/artfulbits/aiCharts/Base/n;

    iput v10, v1, Lcom/artfulbits/aiCharts/Base/n;->e:I

    iget-object v1, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->H:Landroid/graphics/RectF;

    add-float/2addr v12, v0

    invoke-virtual {v1, v6, v12, v9, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->w:Lcom/artfulbits/aiCharts/Base/n;

    iget-object v2, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->H:Landroid/graphics/RectF;

    iget-object v3, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->m:Lcom/artfulbits/aiCharts/Enums/Alignment;

    sget-object v4, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    invoke-virtual {v1, v2, v3, v4}, Lcom/artfulbits/aiCharts/Base/n;->a(Landroid/graphics/RectF;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;)V

    move v5, v0

    :goto_b
    iget-boolean v0, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->z:Z

    if-eqz v0, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->b()Ljava/util/List;

    move-result-object v1

    iget-object v0, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->r:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    iget-boolean v0, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->IsVertical:Z

    if-nez v0, :cond_a

    iget-object v0, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->E:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelLayoutMode;

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelLayoutMode;->MultiRows:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelLayoutMode;

    if-eq v0, v2, :cond_9

    goto :goto_c

    :cond_9
    const/4 v2, 0x0

    iget-object v0, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->h:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v6, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->l:Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->a(Ljava/util/List;ZFFFLcom/artfulbits/aiCharts/Enums/Alignment;)F

    goto/16 :goto_12

    :cond_a
    :goto_c
    iget-object v0, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->E:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelLayoutMode;

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelLayoutMode;->Hide:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelLayoutMode;

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    :goto_d
    const/4 v2, 0x0

    iget-object v3, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->r:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    iget-boolean v3, v3, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->IsVertical:Z

    if-eqz v3, :cond_c

    iget-object v3, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->l:Lcom/artfulbits/aiCharts/Enums/Alignment;

    invoke-static {v13, v3}, Lcom/artfulbits/aiCharts/Base/a;->a(Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;)I

    move-result v3

    goto :goto_e

    :cond_c
    iget-object v3, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->l:Lcom/artfulbits/aiCharts/Enums/Alignment;

    invoke-static {v3, v13}, Lcom/artfulbits/aiCharts/Base/a;->a(Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;)I

    move-result v3

    :goto_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move-object v6, v2

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v4, :cond_10

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;

    iget-wide v11, v8, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Position:D

    invoke-virtual {v7, v11, v12}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->valueToCoeficient(D)D

    move-result-wide v11

    iget-object v9, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->r:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    iget-boolean v9, v9, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->IsVertical:Z

    if-eqz v9, :cond_d

    iget-object v9, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->h:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    float-to-double v13, v9

    iget-object v9, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->h:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    move-object/from16 v16, v1

    move/from16 v17, v2

    float-to-double v1, v9

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v11

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v13, v1

    double-to-float v1, v13

    invoke-virtual {v8, v5, v1, v3}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->a(FFI)V

    goto :goto_10

    :cond_d
    move-object/from16 v16, v1

    move/from16 v17, v2

    iget-object v1, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    iget-object v9, v7, Lcom/artfulbits/aiCharts/Base/ChartAxis;->h:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    float-to-double v13, v9

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v11

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v13

    double-to-float v1, v1

    invoke-virtual {v8, v1, v5, v3}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->a(FFI)V

    :goto_10
    if-eqz v0, :cond_f

    if-eqz v6, :cond_e

    invoke-static {v6, v8}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->isIntersects(Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;)Z

    move-result v1

    if-eqz v1, :cond_e

    iput-boolean v10, v8, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->visible:Z

    goto :goto_11

    :cond_e
    iput-boolean v15, v8, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->visible:Z

    move-object v6, v8

    goto :goto_11

    :cond_f
    iput-boolean v15, v8, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->visible:Z

    :goto_11
    add-int/lit8 v2, v17, 0x1

    move-object/from16 v1, v16

    goto :goto_f

    :cond_10
    :goto_12
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
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected final layoutPolar(FFFF)V
    .locals 9

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->z:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->o:I

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->C:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sub-float v1, p3, p1

    sub-float v2, p4, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    add-float/2addr p1, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    add-float/2addr p2, p4

    div-float/2addr p2, p3

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->b()Ljava/util/List;

    move-result-object p3

    const/4 p4, 0x0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge p4, v1, :cond_8

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    iget-wide v5, v3, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Position:D

    invoke-static {v4, v5, v6}, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->a(Lcom/artfulbits/aiCharts/Base/ChartAxisScale;D)F

    move-result v4

    invoke-static {v4}, Landroid/util/FloatMath;->cos(F)F

    move-result v5

    mul-float v5, v5, v0

    add-float/2addr v5, p1

    invoke-static {v4}, Landroid/util/FloatMath;->sin(F)F

    move-result v6

    mul-float v6, v6, v0

    add-float/2addr v6, p2

    const v7, 0x3e22f983

    mul-float v4, v4, v7

    const/4 v7, 0x0

    cmpg-float v8, v4, v7

    if-gez v8, :cond_0

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v4, v8

    :cond_0
    cmpl-float v7, v4, v7

    if-nez v7, :cond_1

    sget-object v4, Lcom/artfulbits/aiCharts/Enums/Alignment;->Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

    :goto_1
    sget-object v7, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    :goto_2
    invoke-static {v4, v7}, Lcom/artfulbits/aiCharts/Base/a;->a(Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;)I

    move-result v4

    invoke-virtual {v3, v5, v6, v4}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->a(FFI)V

    goto :goto_5

    :cond_1
    const/high16 v7, 0x3e800000    # 0.25f

    cmpg-float v8, v4, v7

    if-gez v8, :cond_2

    sget-object v4, Lcom/artfulbits/aiCharts/Enums/Alignment;->Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

    :goto_3
    sget-object v7, Lcom/artfulbits/aiCharts/Enums/Alignment;->Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

    goto :goto_2

    :cond_2
    cmpl-float v7, v4, v7

    if-nez v7, :cond_3

    sget-object v4, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    goto :goto_3

    :cond_3
    cmpg-float v7, v4, v2

    if-gez v7, :cond_4

    sget-object v4, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    goto :goto_3

    :cond_4
    cmpl-float v7, v4, v2

    if-nez v7, :cond_5

    sget-object v4, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    goto :goto_1

    :cond_5
    const/high16 v7, 0x3f400000    # 0.75f

    cmpg-float v8, v4, v7

    if-gez v8, :cond_6

    sget-object v4, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    :goto_4
    sget-object v7, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    goto :goto_2

    :cond_6
    cmpl-float v4, v4, v7

    if-nez v4, :cond_7

    sget-object v4, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    goto :goto_4

    :cond_7
    sget-object v4, Lcom/artfulbits/aiCharts/Enums/Alignment;->Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

    goto :goto_4

    :goto_5
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method protected final measureCartesian(II)F
    .locals 9

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->r:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    iget-boolean p2, p2, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->IsVertical:Z

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->z:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->b()Ljava/util/List;

    move-result-object v3

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->E:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelLayoutMode;

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelLayoutMode;->MultiRows:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelLayoutMode;

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    int-to-float v6, p1

    const/4 v7, 0x0

    sget-object v8, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->a(Ljava/util/List;ZFFFLcom/artfulbits/aiCharts/Enums/Alignment;)F

    move-result p1

    goto :goto_3

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge p1, v0, :cond_4

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;

    invoke-virtual {v4, p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->measure(Lcom/artfulbits/aiCharts/Base/ChartAxis;)V

    if-eqz p2, :cond_2

    iget v4, v4, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->width:F

    goto :goto_2

    :cond_2
    iget v4, v4, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->height:F

    :goto_2
    cmpg-float v5, v2, v4

    if-gez v5, :cond_3

    move v2, v4

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    move p1, v2

    :goto_3
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->q:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;->Outer:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->q:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;->None:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    if-eq v0, v2, :cond_7

    :cond_5
    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->o:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :cond_7
    const/4 v0, 0x0

    :goto_4
    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->C:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartAxis$3;->c:[I

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelPosition;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelPosition;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_5

    :pswitch_1
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    goto :goto_5

    :pswitch_2
    add-float/2addr v0, p1

    :goto_5
    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->w:Lcom/artfulbits/aiCharts/Base/n;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/n;->a()V

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->w:Lcom/artfulbits/aiCharts/Base/n;

    iget-object v2, v2, Lcom/artfulbits/aiCharts/Base/n;->d:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->w:Lcom/artfulbits/aiCharts/Base/n;

    iget-object v1, v1, Lcom/artfulbits/aiCharts/Base/n;->d:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->C:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->p:I

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->C:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->F:Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;

    invoke-virtual {v1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->a(Z)F

    move-result p2

    add-float/2addr v0, p2

    :cond_9
    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->dimention:F

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->labelsDimention:F

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final measurePolar(FF)F
    .locals 9

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p1, p1, v0

    mul-float p2, p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-boolean v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->z:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->b()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;

    iget-wide v5, v4, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Position:D

    invoke-virtual {p0, v5, v6}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->valueToCoeficient(D)D

    move-result-wide v5

    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v5, v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v4, p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->measure(Lcom/artfulbits/aiCharts/Base/ChartAxis;)V

    iget v6, v4, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->width:F

    sub-float v6, p1, v6

    div-float/2addr v6, v7

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v4, v4, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->height:F

    sub-float v4, p2, v4

    div-float/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->q:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    sget-object p2, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;->Outer:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->q:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    sget-object p2, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;->None:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    if-eq p1, p2, :cond_2

    :cond_1
    iget p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->o:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_2
    iget p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->C:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    return v0
.end method

.method protected final onScaleChanged()V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->B:Lcom/artfulbits/aiCharts/Base/ChartAxis$ScaleChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->B:Lcom/artfulbits/aiCharts/Base/ChartAxis$ScaleChangeListener;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getChart()Lcom/artfulbits/aiCharts/Base/ChartEngine;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis$ScaleChangeListener;->onScaleChanged(Lcom/artfulbits/aiCharts/Base/ChartEngine;Lcom/artfulbits/aiCharts/Base/ChartAxis;)V

    :cond_0
    return-void
.end method

.method protected final onScaleChanging()V
    .locals 2

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->D:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->D:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->t:Lcom/artfulbits/aiCharts/Base/ChartArea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->t:Lcom/artfulbits/aiCharts/Base/ChartArea;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartArea;->invalidate(I)V

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->B:Lcom/artfulbits/aiCharts/Base/ChartAxis$ScaleChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->B:Lcom/artfulbits/aiCharts/Base/ChartAxis$ScaleChangeListener;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getChart()Lcom/artfulbits/aiCharts/Base/ChartEngine;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis$ScaleChangeListener;->onScaleChanging(Lcom/artfulbits/aiCharts/Base/ChartEngine;Lcom/artfulbits/aiCharts/Base/ChartAxis;)V

    :cond_1
    return-void
.end method

.method protected final setArea(Lcom/artfulbits/aiCharts/Base/ChartArea;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->t:Lcom/artfulbits/aiCharts/Base/ChartArea;

    return-void
.end method

.method public final setFormat(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->u:Lcom/artfulbits/aiCharts/Base/e;

    new-instance v1, Ljava/text/MessageFormat;

    invoke-direct {v1, p1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/e;->a(Ljava/text/Format;)V

    return-void
.end method

.method public final setFormat(Ljava/text/Format;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->u:Lcom/artfulbits/aiCharts/Base/e;

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/Base/e;->a(Ljava/text/Format;)V

    iget p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->D:I

    const/4 v0, 0x1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->D:I

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->invalidate(I)V

    return-void
.end method

.method public final setGridLineColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final setGridVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->s:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->s:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final setInverted(Z)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setInverted(Z)V

    return-void
.end method

.method public final setLabelAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->l:Lcom/artfulbits/aiCharts/Enums/Alignment;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->l:Lcom/artfulbits/aiCharts/Enums/Alignment;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final setLabelAngle(F)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->G:Lcom/artfulbits/aiCharts/Base/k;

    iget v0, v0, Lcom/artfulbits/aiCharts/Base/k;->a:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->G:Lcom/artfulbits/aiCharts/Base/k;

    iput p1, v0, Lcom/artfulbits/aiCharts/Base/k;->a:F

    const v1, 0x3c8efa35

    mul-float p1, p1, v1

    invoke-static {p1}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    iput v1, v0, Lcom/artfulbits/aiCharts/Base/k;->b:F

    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result p1

    iput p1, v0, Lcom/artfulbits/aiCharts/Base/k;->c:F

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final setLabelFormat(Ljava/text/Format;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->u:Lcom/artfulbits/aiCharts/Base/e;

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/Base/e;->a(Ljava/text/Format;)V

    iget p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->D:I

    const/4 v0, 0x1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->D:I

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->invalidate(I)V

    return-void
.end method

.method public final setLabelLayoutMode(Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelLayoutMode;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->E:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelLayoutMode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->E:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelLayoutMode;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final setLabelPosition(Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelPosition;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelPosition;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelPosition;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final setLabelsAdapter(Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->y:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->D:I

    const/4 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->D:I

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->y:Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;

    invoke-virtual {p0, v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final setLineType(FI)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->i:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->invalidate(I)V

    return-void
.end method

.method public final setOrigin(D)V
    .locals 3

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->n:D

    cmpl-double v2, v0, p1

    if-eqz v2, :cond_0

    iput-wide p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->n:D

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final setPadding(I)V
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->p:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->p:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final setPosition(Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->r:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    return-void
.end method

.method public final setScaleChangeListener(Lcom/artfulbits/aiCharts/Base/ChartAxis$ScaleChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->B:Lcom/artfulbits/aiCharts/Base/ChartAxis$ScaleChangeListener;

    return-void
.end method

.method public final setScrollBarEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->F:Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->setEnabled(Z)V

    return-void
.end method

.method public final setShowLabels(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->z:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->z:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final setSpacing(I)V
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->C:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->C:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final setTickMarkMode(Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->q:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->q:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final setTickMarkSize(I)V
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->o:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->o:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->w:Lcom/artfulbits/aiCharts/Base/n;

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/n;->a:Ljava/lang/String;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->w:Lcom/artfulbits/aiCharts/Base/n;

    iput-object p1, v0, Lcom/artfulbits/aiCharts/Base/n;->a:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final setTitleAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->m:Lcom/artfulbits/aiCharts/Enums/Alignment;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->m:Lcom/artfulbits/aiCharts/Enums/Alignment;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final setValueType(Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;)V
    .locals 1

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;->ordinal()I

    move-result p1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->x:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->x:I

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->invalidate(I)V

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->D:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->D:I

    :cond_0
    return-void
.end method

.method public final setVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->A:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->A:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final valueToCoeficient(D)D
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->v:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {v0, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->valueToCoefficient(D)D

    move-result-wide p1

    return-wide p1
.end method
