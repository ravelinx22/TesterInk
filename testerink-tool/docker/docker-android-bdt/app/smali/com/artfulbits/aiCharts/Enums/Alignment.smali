.class public final enum Lcom/artfulbits/aiCharts/Enums/Alignment;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/artfulbits/aiCharts/Enums/Alignment;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

.field public static final enum Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

.field public static final enum Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

.field private static final synthetic a:[Lcom/artfulbits/aiCharts/Enums/Alignment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/artfulbits/aiCharts/Enums/Alignment;

    const-string v1, "Near"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/artfulbits/aiCharts/Enums/Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    new-instance v0, Lcom/artfulbits/aiCharts/Enums/Alignment;

    const-string v1, "Center"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/artfulbits/aiCharts/Enums/Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    new-instance v0, Lcom/artfulbits/aiCharts/Enums/Alignment;

    const-string v1, "Far"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/artfulbits/aiCharts/Enums/Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Enums/Alignment;->Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/artfulbits/aiCharts/Enums/Alignment;

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/Alignment;->Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

    aput-object v1, v0, v4

    sput-object v0, Lcom/artfulbits/aiCharts/Enums/Alignment;->a:[Lcom/artfulbits/aiCharts/Enums/Alignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Enums/Alignment;
    .locals 1

    const-class v0, Lcom/artfulbits/aiCharts/Enums/Alignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/artfulbits/aiCharts/Enums/Alignment;

    return-object p0
.end method

.method public static values()[Lcom/artfulbits/aiCharts/Enums/Alignment;
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/Alignment;->a:[Lcom/artfulbits/aiCharts/Enums/Alignment;

    invoke-virtual {v0}, [Lcom/artfulbits/aiCharts/Enums/Alignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/artfulbits/aiCharts/Enums/Alignment;

    return-object v0
.end method
