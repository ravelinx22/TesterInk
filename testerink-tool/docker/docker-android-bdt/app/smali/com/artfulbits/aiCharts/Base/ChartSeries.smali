.class public final Lcom/artfulbits/aiCharts/Base/ChartSeries;
.super Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

# interfaces
.implements Lcom/artfulbits/aiCharts/Base/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Base/ChartSeries$a;,
        Lcom/artfulbits/aiCharts/Base/ChartSeries$IconDrawable;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

.field private c:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

.field private d:Lcom/artfulbits/aiCharts/Base/ChartType;

.field private e:Lcom/artfulbits/aiCharts/Base/ChartEngine;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/artfulbits/aiCharts/Base/ChartAxis;

.field private i:Lcom/artfulbits/aiCharts/Base/ChartAxis;

.field private final j:Lcom/artfulbits/aiCharts/Base/DoubleRange;

.field private final k:Lcom/artfulbits/aiCharts/Base/DoubleRange;

.field private final l:Lcom/artfulbits/aiCharts/Base/DoubleRange;

.field private final m:Lcom/artfulbits/aiCharts/Base/ChartSeries$a;

.field protected m_xValueType:Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;-><init>(Ljava/lang/String;Lcom/artfulbits/aiCharts/Base/ChartType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/artfulbits/aiCharts/Base/ChartType;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/artfulbits/aiCharts/Types/ChartTypes;->getDefault()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;-><init>(Ljava/lang/String;Lcom/artfulbits/aiCharts/Base/ChartType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/artfulbits/aiCharts/Base/ChartType;)V
    .locals 1

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;-><init>()V

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->DEFAULT:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->c:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    invoke-static {}, Lcom/artfulbits/aiCharts/Types/ChartTypes;->getDefault()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->d:Lcom/artfulbits/aiCharts/Base/ChartType;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->e:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->g:Ljava/lang/String;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/DoubleRange;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/DoubleRange;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->j:Lcom/artfulbits/aiCharts/Base/DoubleRange;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/DoubleRange;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/DoubleRange;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->k:Lcom/artfulbits/aiCharts/Base/DoubleRange;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/DoubleRange;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/DoubleRange;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->l:Lcom/artfulbits/aiCharts/Base/DoubleRange;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartSeries$a;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries$a;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->m:Lcom/artfulbits/aiCharts/Base/ChartSeries$a;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->m:Lcom/artfulbits/aiCharts/Base/ChartSeries$a;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->n:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->o:Z

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;->Double:Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->m_xValueType:Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->a:Ljava/lang/String;

    new-instance p1, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    invoke-direct {p1, p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;-><init>(Lcom/artfulbits/aiCharts/Base/ChartSeries;)V

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->b:Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    iput-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->d:Lcom/artfulbits/aiCharts/Base/ChartType;

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "type"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/artfulbits/aiCharts/Base/ChartType;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/artfulbits/aiCharts/Types/ChartTypes;->get(Ljava/lang/Class;)Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;-><init>(Ljava/lang/String;Lcom/artfulbits/aiCharts/Base/ChartType;)V

    return-void
.end method

.method public static findArea(Lcom/artfulbits/aiCharts/Base/ChartSeries;)Lcom/artfulbits/aiCharts/Base/ChartArea;
    .locals 0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->a()Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final a()Lcom/artfulbits/aiCharts/Base/ChartArea;
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->e:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->e:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getAreas()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartArea;

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->get(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/o;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getActualXAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->d:Lcom/artfulbits/aiCharts/Base/ChartType;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isRotated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getYAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getXAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object v0

    return-object v0
.end method

.method public final getActualYAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->d:Lcom/artfulbits/aiCharts/Base/ChartType;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isRotated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getXAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getYAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object v0

    return-object v0
.end method

.method public final getActualZAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;
    .locals 1

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->a()Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getDefaultZAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object v0

    return-object v0
.end method

.method public final getArea()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected final getChart()Lcom/artfulbits/aiCharts/Base/ChartEngine;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->e:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    return-object v0
.end method

.method public final getLegend()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected final getLegendInst()Lcom/artfulbits/aiCharts/Base/ChartLegend;
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->e:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->e:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getLegends()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartLegend;

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->get(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/o;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getLocalBackColor()Ljava/lang/Integer;
    .locals 2

    invoke-super {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getLocalBackColor()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->e:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->e:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getPalette()Lcom/artfulbits/aiCharts/Base/ChartPalette;

    move-result-object v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->e:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getSeries()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPalette;->a(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected final getPalette()Lcom/artfulbits/aiCharts/Base/ChartPalette;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->e:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-nez v0, :cond_0

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartPalette;->Rainbow:Lcom/artfulbits/aiCharts/Base/ChartPalette;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->e:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getPalette()Lcom/artfulbits/aiCharts/Base/ChartPalette;

    move-result-object v0

    return-object v0
.end method

.method public final getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->c:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    return-object v0
.end method

.method public final getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->b:Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    return-object v0
.end method

.method public final getPointsCache()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->n:Ljava/util/List;

    return-object v0
.end method

.method public final getType()Lcom/artfulbits/aiCharts/Base/ChartType;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->d:Lcom/artfulbits/aiCharts/Base/ChartType;

    return-object v0
.end method

.method public final getXAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->h:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->a()Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getDefaultXAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->h:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->h:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    return-object v0
.end method

.method protected final getXRange()Lcom/artfulbits/aiCharts/Base/DoubleRange;
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->j:Lcom/artfulbits/aiCharts/Base/DoubleRange;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->d:Lcom/artfulbits/aiCharts/Base/ChartType;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->j:Lcom/artfulbits/aiCharts/Base/DoubleRange;

    invoke-virtual {v0, p0, v1}, Lcom/artfulbits/aiCharts/Base/ChartType;->getXRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->j:Lcom/artfulbits/aiCharts/Base/DoubleRange;

    return-object v0
.end method

.method public final getYAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->i:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->a()Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getDefaultYAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->i:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->i:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    return-object v0
.end method

.method protected final getYRange()Lcom/artfulbits/aiCharts/Base/DoubleRange;
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->k:Lcom/artfulbits/aiCharts/Base/DoubleRange;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->d:Lcom/artfulbits/aiCharts/Base/ChartType;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->k:Lcom/artfulbits/aiCharts/Base/DoubleRange;

    invoke-virtual {v0, p0, v1}, Lcom/artfulbits/aiCharts/Base/ChartType;->getYRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->k:Lcom/artfulbits/aiCharts/Base/DoubleRange;

    return-object v0
.end method

.method protected final getZRange()Lcom/artfulbits/aiCharts/Base/DoubleRange;
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->l:Lcom/artfulbits/aiCharts/Base/DoubleRange;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->d:Lcom/artfulbits/aiCharts/Base/ChartType;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->l:Lcom/artfulbits/aiCharts/Base/DoubleRange;

    invoke-virtual {v0, p0, v1}, Lcom/artfulbits/aiCharts/Base/ChartType;->getZRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->l:Lcom/artfulbits/aiCharts/Base/DoubleRange;

    return-object v0
.end method

.method protected final inflateAttributes(Landroid/content/res/Resources;Ljava/lang/String;ILandroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "name"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->a:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "area"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->f:Ljava/lang/String;

    return-void

    :cond_1
    const-string v0, "legend"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->g:Ljava/lang/String;

    return-void

    :cond_2
    const-string v0, "type"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/artfulbits/aiCharts/Types/ChartTypes;->get(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->setType(Lcom/artfulbits/aiCharts/Base/ChartType;)V

    return-void

    :cond_3
    const-string v0, "random"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const/16 p1, 0xa

    invoke-interface {p4, p3, p1}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result p1

    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_4

    iget-object p4, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->b:Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    int-to-double v3, p3

    new-array v0, v1, [D

    const/16 v5, 0x64

    invoke-virtual {p2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-double v5, v5

    aput-wide v5, v0, v2

    invoke-virtual {p4, v3, v4, v0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->addXY(D[D)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    const-string v0, "points"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, ","

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->b:Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->beginUpdate()V

    const/4 p2, 0x0

    :goto_1
    array-length p3, p1

    if-ge p2, p3, :cond_6

    iget-object p3, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->b:Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    int-to-double v3, p2

    new-array p4, v1, [D

    aget-object v0, p1, p2

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    aput-wide v5, p4, v2

    invoke-virtual {p3, v3, v4, p4}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->addXY(D[D)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->b:Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->endUpdate()V

    return-void

    :cond_7
    invoke-super {p0, p1, p2, p3, p4}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->inflateAttributes(Landroid/content/res/Resources;Ljava/lang/String;ILandroid/util/AttributeSet;)V

    return-void
.end method

.method protected final invalidate()V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->j:Lcom/artfulbits/aiCharts/Base/DoubleRange;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->b()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->k:Lcom/artfulbits/aiCharts/Base/DoubleRange;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->b()V

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->a()Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartArea;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final isRegionsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->o:Z

    return v0
.end method

.method protected final onChanged(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->onChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->invalidate()V

    return-void
.end method

.method protected final onPointsChanged(Lcom/artfulbits/aiCharts/Base/ChartPoint;Lcom/artfulbits/aiCharts/Base/ChartPoint;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->m:Lcom/artfulbits/aiCharts/Base/ChartSeries$a;

    invoke-virtual {v0, p2}, Lcom/artfulbits/aiCharts/Base/ChartSeries$a;->remove(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->m:Lcom/artfulbits/aiCharts/Base/ChartSeries$a;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartPoint;->X_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->m:Lcom/artfulbits/aiCharts/Base/ChartSeries$a;

    if-gez v0, :cond_1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {v1, v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries$a;->add(ILjava/lang/Object;)V

    :cond_2
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->m:Lcom/artfulbits/aiCharts/Base/ChartSeries$a;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries$a;->clear()V

    :cond_3
    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->j:Lcom/artfulbits/aiCharts/Base/DoubleRange;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->b()V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->k:Lcom/artfulbits/aiCharts/Base/DoubleRange;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->b()V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->e:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->e:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->invalidate(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->invalidate()V

    return-void
.end method

.method protected final onPointsChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->m:Lcom/artfulbits/aiCharts/Base/ChartSeries$a;

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries$a;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->m:Lcom/artfulbits/aiCharts/Base/ChartSeries$a;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->X_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries$a;->a(Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->j:Lcom/artfulbits/aiCharts/Base/DoubleRange;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->b()V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->k:Lcom/artfulbits/aiCharts/Base/DoubleRange;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->b()V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->e:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->e:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->invalidate(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->invalidate()V

    return-void
.end method

.method public final setArea(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->invalidate()V

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->invalidate()V

    return-void
.end method

.method protected final setChart(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->setChart(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->b:Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v1, p1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->setChart(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->invalidate()V

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->e:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->invalidate()V

    return-void
.end method

.method public final setLegend(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getLegendInst()Lcom/artfulbits/aiCharts/Base/ChartLegend;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartLegend;->invalidate()V

    :cond_0
    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getLegendInst()Lcom/artfulbits/aiCharts/Base/ChartLegend;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartLegend;->invalidate()V

    :cond_1
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->e:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->e:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getSeries()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->validateName(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->a:Ljava/lang/String;

    return-void
.end method

.method public final setRegionsEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->o:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->o:Z

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setType(Lcom/artfulbits/aiCharts/Base/ChartType;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->d:Lcom/artfulbits/aiCharts/Base/ChartType;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->d:Lcom/artfulbits/aiCharts/Base/ChartType;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->invalidate()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "type"

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setType(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/artfulbits/aiCharts/Base/ChartType;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/artfulbits/aiCharts/Types/ChartTypes;->get(Ljava/lang/Class;)Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->setType(Lcom/artfulbits/aiCharts/Base/ChartType;)V

    return-void
.end method

.method public final setXAxis(Lcom/artfulbits/aiCharts/Base/ChartAxis;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->h:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->invalidate()V

    return-void
.end method

.method public final setYAxis(Lcom/artfulbits/aiCharts/Base/ChartAxis;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->i:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->invalidate()V

    return-void
.end method
