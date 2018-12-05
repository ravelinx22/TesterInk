.class final Lcom/artfulbits/aiCharts/Base/r;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:Landroid/text/TextPaint;

.field private final c:Landroid/text/TextPaint;

.field private final d:F


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/r;->a:[Ljava/lang/String;

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/r;->b:Landroid/text/TextPaint;

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/r;->b:Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/r;->b:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/r;->b:Landroid/text/TextPaint;

    const/16 v0, 0xa0

    const/16 v1, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/r;->b:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance p1, Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/r;->b:Landroid/text/TextPaint;

    invoke-direct {p1, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/r;->c:Landroid/text/TextPaint;

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/r;->c:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/r;->c:Landroid/text/TextPaint;

    const/4 v0, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x1000000

    invoke-virtual {p1, v2, v0, v0, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :goto_0
    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/r;->a:[Ljava/lang/String;

    array-length p1, p1

    if-ge v1, p1, :cond_0

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/r;->c:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/r;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/artfulbits/aiCharts/Base/r;->d:F

    return-void
.end method

.method public static final a(Lcom/artfulbits/license/LicenseData;)Lcom/artfulbits/aiCharts/Base/r;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, "aiCharts"

    const-string v0, "License file is invalid or missing. \nPlease place proper license.lic to /assets folder."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/artfulbits/aiCharts/Base/r;

    const-string v0, "License file is invalid or missing. \nPlease place proper license.lic to /assets folder."

    invoke-direct {p0, v0}, Lcom/artfulbits/aiCharts/Base/r;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/artfulbits/license/LicenseData;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    new-instance v0, Ljava/text/MessageFormat;

    const-string v3, "License trial period has expired {0, date, MMM dd, yyyy}. Please update license."

    invoke-direct {v0, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/artfulbits/license/LicenseData;->getExpirationDate()Ljava/util/Date;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "aiCharts"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/artfulbits/aiCharts/Base/r;

    invoke-direct {v0, p0}, Lcom/artfulbits/aiCharts/Base/r;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v0, "Subscription"

    invoke-virtual {p0}, Lcom/artfulbits/license/LicenseData;->getLicenceType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/text/MessageFormat;

    const-string v3, "aiCharts is running with subscription license.\nContact sales@artfulbits.com for purchase.\nExpire date {0, date, MMM dd, yyyy}"

    invoke-direct {v0, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/artfulbits/license/LicenseData;->getExpirationDate()Ljava/util/Date;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "aiCharts"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "Trial"

    invoke-virtual {p0}, Lcom/artfulbits/license/LicenseData;->getLicenceType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/text/MessageFormat;

    const-string v3, "aiCharts is running with trial license.\nContact sales@artfulbits.com for purchase.\nExpire date {0, date, MMM dd, yyyy}"

    invoke-direct {v0, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/artfulbits/license/LicenseData;->getExpirationDate()Ljava/util/Date;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "aiCharts"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/artfulbits/aiCharts/Base/r;

    invoke-direct {v0, p0}, Lcom/artfulbits/aiCharts/Base/r;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/r;->c:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    const v3, 0x3f666666    # 0.9f

    mul-float p2, p2, v3

    iget v3, p0, Lcom/artfulbits/aiCharts/Base/r;->d:F

    div-float/2addr p2, v3

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {p1, p2, p2, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/r;->a:[Ljava/lang/String;

    array-length p2, p2

    int-to-float p2, p2

    mul-float p2, p2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p2, v3

    sub-float/2addr v1, p2

    const/4 p2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/r;->a:[Ljava/lang/String;

    array-length v3, v3

    if-ge p2, v3, :cond_0

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/r;->a:[Ljava/lang/String;

    aget-object v3, v3, p2

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/r;->c:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/r;->a:[Ljava/lang/String;

    aget-object v3, v3, p2

    const/high16 v4, 0x3f800000    # 1.0f

    add-float v5, v0, v4

    add-float/2addr v4, v1

    iget-object v6, p0, Lcom/artfulbits/aiCharts/Base/r;->b:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v5, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr v1, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
