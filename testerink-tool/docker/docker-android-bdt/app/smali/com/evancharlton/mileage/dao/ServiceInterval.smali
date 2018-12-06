.class public Lcom/evancharlton/mileage/dao/ServiceInterval;
.super Lcom/evancharlton/mileage/dao/Dao;
.source "ServiceInterval.java"


# annotations
.annotation runtime Lcom/evancharlton/mileage/dao/Dao$DataObject;
    path = "intervals/"
.end annotation


# static fields
.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final DISTANCE:Ljava/lang/String; = "distance"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final START_DATE:Ljava/lang/String; = "start_timestamp"

.field public static final START_ODOMETER:Ljava/lang/String; = "start_odometer"

.field public static final TEMPLATE_ID:Ljava/lang/String; = "service_interval_template_id"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final VEHICLE_ID:Ljava/lang/String; = "vehicle_id"


# instance fields
.field protected mDescription:Ljava/lang/String;
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "description"
        type = 0x0
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f080056
    .end annotation
.end field

.field protected mDistance:J
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "distance"
        type = 0x5
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f080057
    .end annotation
.end field

.field protected mDuration:J
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "duration"
        type = 0x5
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f080058
    .end annotation
.end field

.field protected mStartDate:Ljava/util/Date;
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "start_timestamp"
        type = 0x4
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
    .end annotation
.end field

.field protected mStartOdometer:D
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "start_odometer"
        type = 0x2
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f080059
    .end annotation
.end field

.field protected mTemplateId:J
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "service_interval_template_id"
        type = 0x5
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
        value = 0x7f08005b
    .end annotation
.end field

.field protected mVehicleId:J
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "vehicle_id"
        type = 0x5
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Range$Positive;
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f08005c
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 73
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;-><init>(Landroid/content/ContentValues;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 77
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;-><init>(Landroid/database/Cursor;)V

    .line 78
    return-void
.end method

.method private getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evancharlton/mileage/alarms/IntervalReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v0, "action":Landroid/content/Intent;
    const-string v1, "_id"

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getId()J

    move-result-wide v1

    long-to-int v1, v1

    const/high16 v2, 0x8000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static final loadById(Landroid/content/Context;J)Lcom/evancharlton/mileage/dao/ServiceInterval;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .line 81
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;->BASE_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 82
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 84
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 85
    .local v2, "interval":Lcom/evancharlton/mileage/dao/ServiceInterval;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 86
    new-instance v3, Lcom/evancharlton/mileage/dao/ServiceInterval;

    invoke-direct {v3, v1}, Lcom/evancharlton/mileage/dao/ServiceInterval;-><init>(Landroid/database/Cursor;)V

    move-object v2, v3

    .line 88
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 89
    if-eqz v2, :cond_1

    .line 92
    return-object v2

    .line 90
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load service interval #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public delete(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 174
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/dao/ServiceInterval;->deleteAlarm(Landroid/content/Context;)V

    .line 175
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;->delete(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public deleteAlarm(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 107
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->isExistingObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 110
    .local v0, "mgr":Landroid/app/AlarmManager;
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 111
    const v1, 0x7f080093

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 114
    .end local v0    # "mgr":Landroid/app/AlarmManager;
    :cond_0
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()J
    .locals 2

    .line 239
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mDistance:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 231
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mDuration:J

    return-wide v0
.end method

.method public getStartDate()J
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartOdometer()D
    .locals 2

    .line 207
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mStartOdometer:D

    return-wide v0
.end method

.method public getTemplateId()J
    .locals 2

    .line 223
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mTemplateId:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleId()J
    .locals 2

    .line 215
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mVehicleId:J

    return-wide v0
.end method

.method public raiseNotification(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 126
    const-string v0, "com.evancharlton.mileage_preferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 128
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "interval_notification_enabled"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 129
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getVehicleId()J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/evancharlton/mileage/dao/Vehicle;->loadById(Landroid/content/Context;J)Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v4

    .line 132
    .local v4, "v":Lcom/evancharlton/mileage/dao/Vehicle;
    const v5, 0x7f080094

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/dao/Vehicle;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, "description":Ljava/lang/String;
    new-instance v6, Landroid/app/Notification;

    const v7, 0x7f040017

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getDescription()Ljava/lang/String;

    move-result-object v8

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 136
    .local v6, "notification":Landroid/app/Notification;
    const-string v7, "_id"

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getId()J

    move-result-wide v8

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 137
    invoke-static {p1, v1, v2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 139
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 141
    const-string v7, "interval_notification_led"

    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 142
    iget v7, v6, Landroid/app/Notification;->flags:I

    or-int/2addr v7, v3

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 143
    const v7, -0x350eb

    iput v7, v6, Landroid/app/Notification;->ledARGB:I

    .line 144
    const/16 v7, 0x1f4

    iput v7, v6, Landroid/app/Notification;->ledOffMS:I

    .line 145
    iput v7, v6, Landroid/app/Notification;->ledOnMS:I

    .line 148
    :cond_0
    const-string v7, "interval_notification_vibrate"

    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    const/4 v3, 0x4

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    iput-object v3, v6, Landroid/app/Notification;->vibrate:[J

    .line 157
    :cond_1
    const-string v3, "interval_notification_ringtone"

    const-string v7, ""

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "uri":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 159
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 162
    :cond_2
    const/4 v7, -0x1

    iput v7, v6, Landroid/app/Notification;->defaults:I

    .line 163
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 164
    const-string v7, "notification"

    .line 165
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 166
    .local v7, "notificationMgr":Landroid/app/NotificationManager;
    if-eqz v7, :cond_3

    .line 167
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getId()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v7, v8, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 170
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "uri":Ljava/lang/String;
    .end local v4    # "v":Lcom/evancharlton/mileage/dao/Vehicle;
    .end local v5    # "description":Ljava/lang/String;
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v7    # "notificationMgr":Landroid/app/NotificationManager;
    :cond_3
    return-void

    :array_0
    .array-data 8
        0xfa
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public scheduleAlarm(Landroid/content/Context;J)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "when"    # J

    .line 97
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 98
    .local v0, "mgr":Landroid/app/AlarmManager;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 100
    .local v1, "trigger":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 101
    invoke-static {p1, v5, v1}, Lcom/evancharlton/mileage/math/Calculator;->getDateString(Landroid/content/Context;ILjava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "date":Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const v4, 0x7f080096

    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 103
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 104
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 191
    iput-object p1, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mDescription:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setDistance(J)V
    .locals 0
    .param p1, "distance"    # J

    .line 243
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mDistance:J

    .line 244
    return-void
.end method

.method public setDuration(J)V
    .locals 0
    .param p1, "duration"    # J

    .line 235
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mDuration:J

    .line 236
    return-void
.end method

.method public setStartDate(J)V
    .locals 3
    .param p1, "startDate"    # J

    .line 199
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mStartDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mStartDate:Ljava/util/Date;

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 204
    :goto_0
    return-void
.end method

.method public setStartOdometer(D)V
    .locals 0
    .param p1, "startOdometer"    # D

    .line 211
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mStartOdometer:D

    .line 212
    return-void
.end method

.method public setTemplateId(J)V
    .locals 0
    .param p1, "templateId"    # J

    .line 227
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mTemplateId:J

    .line 228
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 183
    iput-object p1, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mTitle:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setVehicleId(J)V
    .locals 0
    .param p1, "vehicleId"    # J

    .line 219
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mVehicleId:J

    .line 220
    return-void
.end method
