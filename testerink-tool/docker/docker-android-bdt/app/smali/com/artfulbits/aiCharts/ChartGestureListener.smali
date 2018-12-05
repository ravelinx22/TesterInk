.class public Lcom/artfulbits/aiCharts/ChartGestureListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/ChartGestureListener$a;
    }
.end annotation


# static fields
.field public static final ANIMATED_PANNING_FLAG:I = 0x4

.field public static final HORIZONTAL_PANNING_FLAG:I = 0x2

.field public static final NONE_FLAG:I = 0x0

.field public static final VERTICAL_PANNING_FLAG:I = 0x1


# instance fields
.field private final a:Lcom/artfulbits/aiCharts/ChartGestureListener$a;

.field protected final m_chart:Lcom/artfulbits/aiCharts/ChartView;

.field protected m_flags:I


# direct methods
.method public constructor <init>(Lcom/artfulbits/aiCharts/ChartView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/artfulbits/aiCharts/ChartGestureListener;-><init>(Lcom/artfulbits/aiCharts/ChartView;I)V

    return-void
.end method

.method public constructor <init>(Lcom/artfulbits/aiCharts/ChartView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x7

    iput p2, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_flags:I

    iput-object p1, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_chart:Lcom/artfulbits/aiCharts/ChartView;

    new-instance p2, Lcom/artfulbits/aiCharts/ChartGestureListener$a;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/ChartView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/artfulbits/aiCharts/ChartGestureListener$a;-><init>(Lcom/artfulbits/aiCharts/ChartGestureListener;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->a:Lcom/artfulbits/aiCharts/ChartGestureListener$a;

    return-void
.end method

.method protected static getAreaAtPoint(Lcom/artfulbits/aiCharts/ChartView;IILcom/artfulbits/aiCharts/Enums/CoordinateSystem;)Lcom/artfulbits/aiCharts/Base/ChartArea;
    .locals 2

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/ChartView;->getAreas()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartArea;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    move-result-object v1

    if-ne p3, v1, :cond_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static moveAxis(Lcom/artfulbits/aiCharts/Base/ChartAxis;F)V
    .locals 12

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object p0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getZoomSize()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    neg-float p1, p1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getZoomPosition()D

    move-result-wide v4

    add-double v6, v4, v2

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getRealMinimum()D

    move-result-wide v8

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getRealMaximum()D

    move-result-wide v2

    sub-double v10, v2, v0

    invoke-static/range {v6 .. v11}, Lcom/artfulbits/aiCharts/Base/MathUtils;->clamp(DDD)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setZoomPosition(D)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_flags:I

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    iget p1, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_flags:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    iget p2, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_flags:I

    and-int/lit8 p2, p2, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget v2, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_flags:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz p2, :cond_6

    if-nez v2, :cond_3

    if-eqz v3, :cond_6

    :cond_3
    iget-object p2, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_chart:Lcom/artfulbits/aiCharts/ChartView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    sget-object v5, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->Cartesian:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    invoke-static {p2, v4, p1, v5}, Lcom/artfulbits/aiCharts/ChartGestureListener;->getAreaAtPoint(Lcom/artfulbits/aiCharts/ChartView;IILcom/artfulbits/aiCharts/Enums/CoordinateSystem;)Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object p1

    if-eqz p1, :cond_6

    const/4 p2, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getDefaultXAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, p2

    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getDefaultYAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object p2

    :cond_5
    iget-object p1, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->a:Lcom/artfulbits/aiCharts/ChartGestureListener$a;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->a()V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->a:Lcom/artfulbits/aiCharts/ChartGestureListener$a;

    neg-float p3, p3

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->a(Lcom/artfulbits/aiCharts/Base/ChartAxis;Lcom/artfulbits/aiCharts/Base/ChartAxis;FF)V

    return v1

    :cond_6
    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    iget p2, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_flags:I

    and-int/lit8 p2, p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget v2, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_flags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->a:Lcom/artfulbits/aiCharts/ChartGestureListener$a;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->a()V

    if-nez p2, :cond_2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v3, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_chart:Lcom/artfulbits/aiCharts/ChartView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    sget-object v5, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->Cartesian:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    invoke-static {v3, v4, p1, v5}, Lcom/artfulbits/aiCharts/ChartGestureListener;->getAreaAtPoint(Lcom/artfulbits/aiCharts/ChartView;IILcom/artfulbits/aiCharts/Enums/CoordinateSystem;)Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getSeriesBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getDefaultXAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object p2

    neg-float p3, p3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p3, v3

    invoke-static {p2, p3}, Lcom/artfulbits/aiCharts/ChartGestureListener;->moveAxis(Lcom/artfulbits/aiCharts/Base/ChartAxis;F)V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getDefaultYAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p4, p2

    invoke-static {p1, p4}, Lcom/artfulbits/aiCharts/ChartGestureListener;->moveAxis(Lcom/artfulbits/aiCharts/Base/ChartAxis;F)V

    :cond_4
    return v1

    :cond_5
    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_flags:I

    return-void
.end method
