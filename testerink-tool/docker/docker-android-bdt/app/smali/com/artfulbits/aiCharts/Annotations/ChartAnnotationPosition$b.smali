.class final Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$b;
.super Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:D

.field private final c:D


# direct methods
.method public constructor <init>(Ljava/lang/String;DD)V
    .locals 0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;-><init>()V

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$b;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$b;->b:D

    iput-wide p4, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$b;->c:D

    return-void
.end method


# virtual methods
.method protected final getPin(Lcom/artfulbits/aiCharts/Base/ChartEngine;Landroid/graphics/PointF;)V
    .locals 6

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getAreas()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getAreas()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/artfulbits/aiCharts/Base/ChartArea;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getAreas()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object p1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->get(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/o;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void

    :cond_2
    invoke-static {p1}, Lcom/artfulbits/aiCharts/Base/ChartTransform;->create(Lcom/artfulbits/aiCharts/Base/ChartArea;)Lcom/artfulbits/aiCharts/Base/ChartTransform;

    move-result-object v0

    iget-wide v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$b;->b:D

    iget-wide v3, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$b;->c:D

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartTransform;->getPoint(DDLandroid/graphics/PointF;)V

    return-void
.end method
