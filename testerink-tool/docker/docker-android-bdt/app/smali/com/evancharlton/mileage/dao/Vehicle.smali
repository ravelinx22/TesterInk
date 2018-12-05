.class public Lcom/evancharlton/mileage/dao/Vehicle;
.super Lcom/evancharlton/mileage/dao/Dao;
.source "Vehicle.java"


# annotations
.annotation runtime Lcom/evancharlton/mileage/dao/Dao$DataObject;
    path = "vehicles/"
.end annotation


# static fields
.field public static final DEFAULT_TIME:Ljava/lang/String; = "default_time"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final MAKE:Ljava/lang/String; = "make"

.field public static final MODEL:Ljava/lang/String; = "model"

.field public static final PREF_CURRENCY:Ljava/lang/String; = "currency_units"

.field public static final PREF_DISTANCE_UNITS:Ljava/lang/String; = "odometer_units"

.field public static final PREF_ECONOMY_UNITS:Ljava/lang/String; = "economy_units"

.field public static final PREF_VOLUME_UNITS:Ljava/lang/String; = "volume_units"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final VEHICLE_TYPE:Ljava/lang/String; = "vehicle_type_id"

.field public static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field protected mDefaultTime:J
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "default_time"
        type = 0x5
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
    .end annotation
.end field

.field protected mDescription:Ljava/lang/String;
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "description"
        type = 0x0
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Nullable;
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
    .end annotation
.end field

.field protected mMake:Ljava/lang/String;
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "make"
        type = 0x0
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f080065
    .end annotation
.end field

.field protected mModel:Ljava/lang/String;
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "model"
        type = 0x0
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f080066
    .end annotation
.end field

.field protected mPrefCurrency:Ljava/lang/String;
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "currency_units"
        type = 0x0
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
    .end annotation
.end field

.field protected mPrefDistanceUnits:I
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "odometer_units"
        type = 0x1
        value = 0x2
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
    .end annotation
.end field

.field protected mPrefEconomyUnits:I
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "economy_units"
        type = 0x1
        value = 0x6
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
    .end annotation
.end field

.field protected mPrefVolumeUnits:I
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "volume_units"
        type = 0x1
        value = 0x3
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
    .end annotation
.end field

.field protected mTitle:Ljava/lang/String;
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "title"
        type = 0x0
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f080067
    .end annotation
.end field

.field protected mVehicleType:J
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "vehicle_type_id"
        type = 0x5
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Range$Positive;
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f080068
    .end annotation
.end field

.field protected mYear:Ljava/lang/String;
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "year"
        type = 0x0
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f08006b
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 87
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;-><init>(Landroid/content/ContentValues;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 91
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;-><init>(Landroid/database/Cursor;)V

    .line 92
    return-void
.end method

.method public static final loadById(Landroid/content/Context;J)Lcom/evancharlton/mileage/dao/Vehicle;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .line 95
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->BASE_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 96
    .local v0, "uri":Landroid/net/Uri;
    nop

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 98
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 99
    .local v2, "v":Lcom/evancharlton/mileage/dao/Vehicle;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 100
    new-instance v3, Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-direct {v3, v1}, Lcom/evancharlton/mileage/dao/Vehicle;-><init>(Landroid/database/Cursor;)V

    move-object v2, v3

    .line 102
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 103
    if-eqz v2, :cond_1

    .line 106
    return-object v2

    .line 104
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load vehicle #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Vehicle;->mPrefCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultTime()J
    .locals 2

    .line 199
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Vehicle;->mDefaultTime:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Vehicle;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDistanceUnits()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/evancharlton/mileage/dao/Vehicle;->mPrefDistanceUnits:I

    return v0
.end method

.method public getEconomyUnits()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/evancharlton/mileage/dao/Vehicle;->mPrefEconomyUnits:I

    return v0
.end method

.method public getMake()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Vehicle;->mMake:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Vehicle;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Vehicle;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 173
    const-string v0, "%s %s %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Vehicle;->getYear()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Vehicle;->getMake()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Vehicle;->getModel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evancharlton/mileage/dao/Vehicle;->mTitle:Ljava/lang/String;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Vehicle;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleType()J
    .locals 2

    .line 195
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Vehicle;->mVehicleType:J

    return-wide v0
.end method

.method public getVolumeUnits()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/evancharlton/mileage/dao/Vehicle;->mPrefVolumeUnits:I

    return v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Vehicle;->mYear:Ljava/lang/String;

    return-object v0
.end method

.method public loadLatestFillup(Landroid/content/Context;)Lcom/evancharlton/mileage/dao/Fillup;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 110
    sget-object v6, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    .line 111
    .local v6, "uri":Landroid/net/Uri;
    sget-object v7, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PROJECTION:[Ljava/lang/String;

    .line 112
    .local v7, "projection":[Ljava/lang/String;
    nop

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "vehicle_id = ?"

    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Vehicle;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v4, v2

    const-string v5, "odometer desc"

    .line 113
    move-object v1, v6

    move-object v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 118
    .local v0, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 119
    .local v1, "newest":Lcom/evancharlton/mileage/dao/Fillup;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lt v2, v8, :cond_0

    .line 120
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 121
    new-instance v2, Lcom/evancharlton/mileage/dao/Fillup;

    invoke-direct {v2, v0}, Lcom/evancharlton/mileage/dao/Fillup;-><init>(Landroid/database/Cursor;)V

    move-object v1, v2

    .line 123
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 124
    return-object v1
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;

    .line 168
    iput-object p1, p0, Lcom/evancharlton/mileage/dao/Vehicle;->mPrefCurrency:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setDefaultTime(J)V
    .locals 0
    .param p1, "defaultTime"    # J

    .line 152
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/Vehicle;->mDefaultTime:J

    .line 153
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lcom/evancharlton/mileage/dao/Vehicle;->mDescription:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setDistanceUnits(I)V
    .locals 0
    .param p1, "distanceUnits"    # I

    .line 160
    iput p1, p0, Lcom/evancharlton/mileage/dao/Vehicle;->mPrefDistanceUnits:I

    .line 161
    return-void
.end method

.method public setEconomyUnits(I)V
    .locals 0
    .param p1, "economyUnits"    # I

    .line 164
    iput p1, p0, Lcom/evancharlton/mileage/dao/Vehicle;->mPrefEconomyUnits:I

    .line 165
    return-void
.end method

.method public setMake(Ljava/lang/String;)V
    .locals 0
    .param p1, "make"    # Ljava/lang/String;

    .line 140
    iput-object p1, p0, Lcom/evancharlton/mileage/dao/Vehicle;->mMake:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;

    .line 144
    iput-object p1, p0, Lcom/evancharlton/mileage/dao/Vehicle;->mModel:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lcom/evancharlton/mileage/dao/Vehicle;->mTitle:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setVehicleType(J)V
    .locals 0
    .param p1, "vehicleType"    # J

    .line 148
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/Vehicle;->mVehicleType:J

    .line 149
    return-void
.end method

.method public setVolumeUnits(I)V
    .locals 0
    .param p1, "volumeUnits"    # I

    .line 156
    iput p1, p0, Lcom/evancharlton/mileage/dao/Vehicle;->mPrefVolumeUnits:I

    .line 157
    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 0
    .param p1, "year"    # Ljava/lang/String;

    .line 136
    iput-object p1, p0, Lcom/evancharlton/mileage/dao/Vehicle;->mYear:Ljava/lang/String;

    .line 137
    return-void
.end method
