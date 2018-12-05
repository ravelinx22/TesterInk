.class final Lcom/artfulbits/aiCharts/Base/l$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/artfulbits/aiCharts/Base/ChartSeries;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartSeries;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/l$b;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/l$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 3

    check-cast p1, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/l$b;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v2

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartType;->INTERNAL_STACK_GROUP:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartType;->INTERNAL_STACK_GROUP:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {p1, v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
