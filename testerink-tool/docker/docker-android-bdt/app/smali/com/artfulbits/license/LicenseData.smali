.class public final Lcom/artfulbits/license/LicenseData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/license/LicenseData$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:J


# direct methods
.method private constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/artfulbits/license/LicenseData$a;

    invoke-direct {v0, p1}, Lcom/artfulbits/license/LicenseData$a;-><init>([B)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/artfulbits/license/LicenseData$a;->a(I)V

    invoke-virtual {v0}, Lcom/artfulbits/license/LicenseData$a;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/artfulbits/license/LicenseData;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/artfulbits/license/LicenseData$a;->b()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/artfulbits/license/LicenseData;->d:J

    invoke-virtual {v0}, Lcom/artfulbits/license/LicenseData$a;->b()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/artfulbits/license/LicenseData;->e:J

    invoke-virtual {v0}, Lcom/artfulbits/license/LicenseData$a;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/artfulbits/license/LicenseData;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/artfulbits/license/LicenseData$a;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/artfulbits/license/LicenseData;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_2

    const/16 p1, 0x200

    new-array p1, p1, [B

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-lez p1, :cond_1

    const-string p1, "US-ASCII"

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    move-object p1, v0

    goto :goto_3

    :catch_1
    move-exception p0

    move-object p1, v0

    :goto_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    new-instance p0, Ljava/math/BigInteger;

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x80

    invoke-direct {p1, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    move-object p1, v0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p1, v0

    :goto_1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object p1
.end method

.method public static fromPackage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[B[B)Lcom/artfulbits/license/LicenseData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B)",
            "Lcom/artfulbits/license/LicenseData;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/artfulbits/license/LicenseData;->b(Ljava/lang/Class;Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {p0, p2}, Lcom/artfulbits/license/LicenseData;->a(Ljava/lang/Class;Ljava/lang/String;)[B

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_3

    new-instance p0, Ljava/math/BigInteger;

    const/4 p2, 0x1

    invoke-direct {p0, p2, p3}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p3, Ljava/math/BigInteger;

    invoke-direct {p3, p2, p4}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p4, Ljava/io/ByteArrayOutputStream;

    array-length v0, p1

    invoke-direct {p4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    array-length v3, p1

    sub-int/2addr v3, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v3, v3, [B

    array-length v4, v3

    invoke-static {p1, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, p2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v4, p0, p3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    aget-byte v4, v3, v1

    if-nez v4, :cond_1

    array-length v4, v3

    sub-int/2addr v4, p2

    invoke-virtual {p4, v3, p2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_1
    array-length v4, v3

    invoke-virtual {p4, v3, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_1
    add-int/2addr v2, v0

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/artfulbits/license/LicenseData;

    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/artfulbits/license/LicenseData;-><init>([B)V

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getCreationDate()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/artfulbits/license/LicenseData;->d:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public final getExpirationDate()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/artfulbits/license/LicenseData;->e:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public final getLicenceType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/license/LicenseData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getReserved()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/license/LicenseData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/license/LicenseData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 5

    iget-wide v0, p0, Lcom/artfulbits/license/LicenseData;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v0, p0, Lcom/artfulbits/license/LicenseData;->e:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/artfulbits/license/LicenseData;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/license/LicenseData;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isExpired()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/artfulbits/license/LicenseData;->e:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    iget-wide v2, p0, Lcom/artfulbits/license/LicenseData;->d:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isValid()Z
    .locals 6

    iget-wide v0, p0, Lcom/artfulbits/license/LicenseData;->d:J

    iget-wide v2, p0, Lcom/artfulbits/license/LicenseData;->e:J

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/artfulbits/license/LicenseData;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/license/LicenseData;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    return v4

    :cond_2
    iget-object v0, p0, Lcom/artfulbits/license/LicenseData;->b:Ljava/lang/String;

    if-nez v0, :cond_3

    return v4

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/artfulbits/license/LicenseData;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/artfulbits/license/LicenseData;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/artfulbits/license/LicenseData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
