.class public final enum Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartAxisScale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntervalType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Days:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

.field public static final enum Double:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

.field public static final enum Hours:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

.field public static final enum Miliseconds:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

.field public static final enum Minutes:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

.field public static final enum Mounth:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

.field public static final enum Seconds:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

.field public static final enum Years:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

.field private static final synthetic a:[Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;


# instance fields
.field protected final Field:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    const-string v1, "Double"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Double:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    const-string v1, "Miliseconds"

    const/4 v3, 0x1

    const/16 v4, 0xe

    invoke-direct {v0, v1, v3, v4}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Miliseconds:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    const-string v1, "Seconds"

    const/4 v4, 0x2

    const/16 v5, 0xd

    invoke-direct {v0, v1, v4, v5}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Seconds:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    const-string v1, "Minutes"

    const/4 v5, 0x3

    const/16 v6, 0xc

    invoke-direct {v0, v1, v5, v6}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Minutes:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    const-string v1, "Hours"

    const/4 v6, 0x4

    const/16 v7, 0xa

    invoke-direct {v0, v1, v6, v7}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Hours:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    const-string v1, "Days"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Days:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    const-string v1, "Mounth"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v4}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Mounth:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    const-string v1, "Years"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v3}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Years:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Double:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Miliseconds:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Seconds:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Minutes:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Hours:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Days:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Mounth:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Years:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->a:[Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Field:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;
    .locals 1

    const-class v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    return-object p0
.end method

.method public static values()[Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->a:[Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    invoke-virtual {v0}, [Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    return-object v0
.end method
