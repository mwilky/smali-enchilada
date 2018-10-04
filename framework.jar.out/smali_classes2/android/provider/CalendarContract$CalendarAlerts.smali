.class public final Landroid/provider/CalendarContract$CalendarAlerts;
.super Ljava/lang/Object;
.source "CalendarContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/CalendarContract$CalendarAlertsColumns;
.implements Landroid/provider/CalendarContract$EventsColumns;
.implements Landroid/provider/CalendarContract$CalendarColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CalendarAlerts"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

.field private static final DEBUG:Z = false

.field private static final SORT_ORDER_ALARMTIME_ASC:Ljava/lang/String; = "alarmTime ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "CalendarAlerts"

.field private static final WHERE_ALARM_EXISTS:Ljava/lang/String; = "event_id=? AND begin=? AND alarmTime=?"

.field private static final WHERE_FINDNEXTALARMTIME:Ljava/lang/String; = "alarmTime>=?"

.field private static final WHERE_RESCHEDULE_MISSED_ALARMS:Ljava/lang/String; = "state=0 AND alarmTime<? AND alarmTime>? AND end>=?"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.calendar/calendar_alerts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.calendar/calendar_alerts/by_instance"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final alarmExists(Landroid/content/ContentResolver;JJJ)Z
    .locals 8

    const/16 v0, 0x34

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    const-string v0, "alarmTime"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    sget-object v2, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "event_id=? AND begin=? AND alarmTime=?"

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    aput-object v0, v5, v7

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v5, v1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move v1, v7

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v2

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return v1
.end method

.method public static final findNextAlarmTime(Landroid/content/ContentResolver;J)J
    .locals 9

    const/16 v0, 0x35

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alarmTime>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alarmTime"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "alarmTime>=?"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    aput-object v1, v6, v8

    const-string v7, "alarmTime ASC"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v5

    goto :goto_0

    :catchall_0
    move-exception v5

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v5

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-wide v2
.end method

.method public static final insert(Landroid/content/ContentResolver;JJJJI)Landroid/net/Uri;
    .locals 6

    const/16 v0, 0x33

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "begin"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "end"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "alarmTime"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "creationTime"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "receivedTime"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "notifyTime"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "state"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "minutes"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public static final rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    sub-long v2, v0, v2

    const-string v4, "alarmTime"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    sget-object v6, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v8, "state=0 AND alarmTime<? AND alarmTime>? AND end>=?"

    const/4 v4, 0x3

    new-array v9, v4, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    aput-object v4, v9, v11

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v9, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v9, v5

    const-string v10, "alarmTime ASC"

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    const-wide/16 v5, -0x1

    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v10, v5, v8

    if-eqz v10, :cond_1

    invoke-static {p1, p2, v8, v9}, Landroid/provider/CalendarContract$CalendarAlerts;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v5, v8

    :cond_1
    goto :goto_0

    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    nop

    return-void

    :catchall_0
    move-exception v5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method public static scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/app/AlarmManager;

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EVENT_REMINDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "alarmTime"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1, v1, p2, p3, v2}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    return-void
.end method
