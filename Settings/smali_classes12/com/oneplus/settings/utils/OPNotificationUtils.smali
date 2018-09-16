.class public Lcom/oneplus/settings/utils/OPNotificationUtils;
.super Ljava/lang/Object;
.source "OPNotificationUtils.java"


# static fields
.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX_RO:Ljava/lang/String; = "ro.config."

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final MEDIA_SELECTION:Ljava/lang/String; = "mime_type LIKE \'audio/%\' OR mime_type IN (\'application/ogg\', \'application/x-flac\')"

.field static final OriginName:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "OPNotificationUtils"

.field public static final TYPE_ALARM:I = 0x4

.field public static final TYPE_MMS_NOTIFICATION:I = 0x8

.field public static final TYPE_NOTIFICATION:I = 0x2

.field public static final TYPE_RINGTONE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 38
    const-string v0, "beep"

    const-string v1, "capriccioso"

    const-string v2, "Cloud"

    const-string v3, "echo"

    const-string v4, "In_high_spirit"

    const-string v5, "Journey"

    const-string v6, "longing"

    const-string v7, "Old_telephone"

    const-string v8, "oneplus_tune"

    const-string v9, "Rotation"

    const-string v10, "Innocence"

    const-string v11, "Talk_about"

    const-string v12, "Ding"

    const-string v13, "Distant"

    const-string v14, "Drops"

    const-string v15, "Elegant"

    const-string v16, "Free"

    const-string v17, "harp"

    const-string v18, "Linger"

    const-string v19, "Meet"

    const-string v20, "Quickly"

    const-string v21, "surprise"

    const-string v22, "Tactfully"

    const-string v23, "Wind_chime"

    const-string v24, "A_starry_night"

    const-string v25, "alarm_clock1"

    const-string v26, "alarm_clock2"

    const-string v27, "flyer"

    const-string v28, "Spring"

    const-string v29, "Walking_in_the_rain"

    filled-new-array/range {v0 .. v29}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/utils/OPNotificationUtils;->OriginName:[Ljava/lang/String;

    .line 204
    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "title"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/utils/OPNotificationUtils;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 431
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPNotificationUtils;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "setting":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 433
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 434
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 433
    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, "uriString":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    nop

    .line 439
    .local v1, "ringtoneUri":Landroid/net/Uri;
    :cond_1
    if-eqz v1, :cond_2

    .line 440
    invoke-static {v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 441
    invoke-static {v1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 444
    :cond_2
    return-object v1
.end method

.method public static getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 349
    const/4 v0, 0x0

    if-ltz p1, :cond_6

    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    goto/16 :goto_5

    .line 353
    :cond_0
    if-nez p1, :cond_1

    .line 354
    const-string v1, "ringtone"

    .local v1, "setting":Ljava/lang/String;
    goto :goto_0

    .line 356
    .end local v1    # "setting":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ringtone_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    .restart local v1    # "setting":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "uriString":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 361
    const-string v3, "OPNotificationUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActualRingtoneUriBySubId("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-object v0

    .line 365
    :cond_2
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPNotificationUtils;->getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    .line 366
    .local v3, "ringToneUri":Landroid/net/Uri;
    nop

    .line 368
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v0, v4

    .line 370
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 371
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    .line 376
    :cond_3
    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 377
    goto :goto_2

    .line 376
    :catchall_0
    move-exception v4

    goto :goto_4

    .line 373
    :catch_0
    move-exception v4

    .line 374
    .local v4, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v5, "OPNotificationUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ex "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "ex":Landroid/database/sqlite/SQLiteException;
    goto :goto_1

    .line 380
    :goto_2
    if-nez v3, :cond_5

    .line 381
    const-string v4, "OPNotificationUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getActualRingtoneUriBySubId("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") failed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-static {p0, v3}, Lcom/oneplus/settings/utils/OPNotificationUtils;->validForProvider(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 383
    invoke-static {p0, v5}, Lcom/oneplus/settings/utils/OPNotificationUtils;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    goto :goto_3

    .line 385
    :cond_4
    invoke-static {v5}, Lcom/oneplus/settings/utils/OPNotificationUtils;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 388
    :cond_5
    :goto_3
    const-string v4, "OPNotificationUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getActualRingtoneUriBySubId("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") of user["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-object v3

    .line 376
    :goto_4
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    .line 350
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "setting":Ljava/lang/String;
    .end local v2    # "uriString":Ljava/lang/String;
    .end local v3    # "ringToneUri":Landroid/net/Uri;
    :cond_6
    :goto_5
    return-object v0
.end method

.method private static getDefaultRingtoneFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "settingName"    # Ljava/lang/String;

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.config."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 529
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "defaultRingtoneFilenameGet":Ljava/lang/String;
    return-object v0
.end method

.method public static getDefaultRingtoneSubIdByUri(Landroid/net/Uri;)I
    .locals 4
    .param p0, "defaultRingtoneUri"    # Landroid/net/Uri;

    .line 315
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 316
    return v0

    .line 323
    :cond_0
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    const/4 v0, 0x0

    return v0

    .line 326
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "uriString":Ljava/lang/String;
    const/4 v2, -0x1

    .line 328
    .local v2, "parsedSubId":I
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 329
    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 331
    if-lez v2, :cond_2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_2

    .line 332
    add-int/lit8 v0, v2, -0x1

    return v0

    .line 335
    :cond_2
    return v0
.end method

.method public static getDefaultUri(I)Landroid/net/Uri;
    .locals 1
    .param p0, "type"    # I

    .line 405
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 406
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    return-object v0

    .line 407
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 408
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v0

    .line 409
    :cond_1
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_2

    .line 410
    const-string v0, "mms_notification"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 411
    :cond_2
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_3

    .line 412
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    return-object v0

    .line 414
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRingtoneAlias(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "strRingtoneTitle"    # Ljava/lang/String;

    .line 167
    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/4 v1, 0x4

    if-gt p1, v1, :cond_2

    new-array v1, v0, [I

    const/16 v2, 0xf

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    const-string v1, ""

    const-string v2, "oos_ring_ringtones_"

    const-string v4, "oos_ring_notifications_"

    const-string v5, ""

    const-string v6, "oos_ring_alarms_"

    filled-new-array {v1, v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "strRingtoneType":[Ljava/lang/String;
    aget-object v2, v1, p1

    const-string v4, ""

    if-eq v2, v4, :cond_2

    if-eqz p2, :cond_2

    .line 170
    const/4 v2, 0x0

    .line 171
    .local v2, "strOOS":Ljava/lang/String;
    const/4 v4, 0x0

    .line 172
    .local v4, "actualTitle":Ljava/lang/String;
    const v5, 0x10405bb

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 174
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 175
    .local v5, "actualUri":Landroid/net/Uri;
    invoke-static {p0, v5, v3, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 177
    .end local v5    # "actualUri":Landroid/net/Uri;
    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 181
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    const-string v7, "_"

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "string"

    const-string v7, "android"

    invoke-virtual {v5, v2, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 185
    .local v5, "resId":I
    if-lez v5, :cond_1

    .line 187
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 188
    if-eqz v4, :cond_2

    .line 190
    const v6, 0x10405bc

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-virtual {p0, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 193
    :cond_1
    const-string v0, "OPNotificationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRingtoneAlias: resource not found - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v1    # "strRingtoneType":[Ljava/lang/String;
    .end local v2    # "strOOS":Ljava/lang/String;
    .end local v4    # "actualTitle":Ljava/lang/String;
    .end local v5    # "resId":I
    :cond_2
    :goto_1
    return-object p2
.end method

.method private static getSettingForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 448
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 449
    const-string v0, "ringtone"

    return-object v0

    .line 450
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 451
    const-string v0, "notification_sound"

    return-object v0

    .line 452
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 453
    const-string v0, "alarm_alert"

    return-object v0

    .line 454
    :cond_2
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_3

    .line 455
    const-string v0, "mms_notification"

    return-object v0

    .line 457
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 472
    nop

    .line 473
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ringtone_default"

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 472
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "uriString":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "followSettingsUri"    # Z
    .param p3, "allowRemote"    # Z

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 240
    .local v6, "res":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 242
    .local v7, "title":Ljava/lang/String;
    if-eqz p1, :cond_a

    .line 243
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 245
    .local v8, "authority":Ljava/lang/String;
    const-string v0, "settings"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    .line 246
    if-eqz p2, :cond_9

    .line 251
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 252
    nop

    .line 253
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPNotificationUtils;->getDefaultRingtoneSubIdByUri(Landroid/net/Uri;)I

    move-result v0

    .line 252
    invoke-static {p0, v0}, Lcom/oneplus/settings/utils/OPNotificationUtils;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .local v0, "actualUri":Landroid/net/Uri;
    goto :goto_0

    .line 255
    .end local v0    # "actualUri":Landroid/net/Uri;
    :cond_0
    nop

    .line 256
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    .line 255
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 258
    .restart local v0    # "actualUri":Landroid/net/Uri;
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p3}, Lcom/oneplus/settings/utils/OPNotificationUtils;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "actualTitle":Ljava/lang/String;
    const v3, 0x10405bc

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v2, v4, v1

    .line 261
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 263
    .end local v0    # "actualUri":Landroid/net/Uri;
    .end local v2    # "actualTitle":Ljava/lang/String;
    goto/16 :goto_7

    .line 265
    :cond_1
    const/4 v0, 0x0

    move-object v10, v0

    .line 267
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "media"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 268
    if-eqz p3, :cond_2

    :goto_1
    move-object v3, v0

    goto :goto_2

    :cond_2
    const-string v0, "mime_type LIKE \'audio/%\' OR mime_type IN (\'application/ogg\', \'application/x-flac\')"

    goto :goto_1

    .line 269
    .local v3, "mediaSelection":Ljava/lang/String;
    :goto_2
    sget-object v2, Lcom/oneplus/settings/utils/OPNotificationUtils;->MEDIA_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v10, v0

    .line 270
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_4

    .line 271
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 272
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    if-eqz v10, :cond_3

    .line 291
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_3
    const/4 v1, 0x0

    .line 272
    .end local v10    # "cursor":Landroid/database/Cursor;
    .local v1, "cursor":Landroid/database/Cursor;
    return-object v0

    .line 290
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v3    # "mediaSelection":Ljava/lang/String;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_4
    if-eqz v10, :cond_5

    .line 291
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_5
    const/4 v0, 0x0

    .line 294
    .end local v10    # "cursor":Landroid/database/Cursor;
    .local v0, "cursor":Landroid/database/Cursor;
    goto :goto_6

    .line 290
    .end local v0    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    .line 278
    .local v1, "mRemotePlayer":Landroid/media/IRingtonePlayer;
    if-eqz p3, :cond_6

    .line 279
    :try_start_1
    const-string v2, "audio"

    .line 280
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 281
    .local v2, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 283
    .end local v2    # "audioManager":Landroid/media/AudioManager;
    :cond_6
    if-eqz v1, :cond_8

    .line 285
    :try_start_2
    invoke-interface {v1, p1}, Landroid/media/IRingtonePlayer;->getTitle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v2

    .line 287
    goto :goto_5

    .line 290
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v1    # "mRemotePlayer":Landroid/media/IRingtonePlayer;
    :goto_4
    if-eqz v10, :cond_7

    .line 291
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_7
    const/4 v1, 0x0

    .end local v10    # "cursor":Landroid/database/Cursor;
    .local v1, "cursor":Landroid/database/Cursor;
    throw v0

    .line 286
    .restart local v0    # "e":Ljava/lang/SecurityException;
    .local v1, "mRemotePlayer":Landroid/media/IRingtonePlayer;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v2

    .line 290
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v1    # "mRemotePlayer":Landroid/media/IRingtonePlayer;
    :cond_8
    :goto_5
    if-eqz v10, :cond_5

    goto :goto_3

    .line 295
    .end local v10    # "cursor":Landroid/database/Cursor;
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_6
    if-nez v7, :cond_9

    .line 296
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 299
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v8    # "authority":Ljava/lang/String;
    :cond_9
    :goto_7
    goto :goto_8

    .line 300
    :cond_a
    const v0, 0x10405c0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 303
    :goto_8
    if-nez v7, :cond_b

    .line 304
    const v0, 0x10405c1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 306
    if-nez v7, :cond_b

    .line 307
    const-string v7, ""

    .line 311
    :cond_b
    return-object v7
.end method

.method private static hasData(Landroid/database/Cursor;)Z
    .locals 1
    .param p0, "c"    # Landroid/database/Cursor;

    .line 521
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notification"    # Ljava/lang/String;
    .param p2, "settingsName"    # Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120cde

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "mUnkownRingtone":Ljava/lang/String;
    const/4 v1, 0x1

    .line 125
    .local v1, "type":I
    const-string v2, "notification_sound"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mms_notification"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    const-string v2, "alarm_alert"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    const/4 v1, 0x4

    goto :goto_1

    .line 126
    :cond_1
    :goto_0
    const/4 v1, 0x2

    .line 130
    :cond_2
    :goto_1
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " settingsName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {p0, v1, p1}, Lcom/oneplus/settings/utils/OPNotificationUtils;->getRingtoneAlias(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 135
    invoke-static {p0, p2}, Lcom/oneplus/settings/utils/OPNotificationUtils;->restoreRingtoneIfNotExist(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    const-string v2, "ringtone"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    const-string v2, "ringtone_2"

    invoke-static {p0, v2}, Lcom/oneplus/settings/utils/OPNotificationUtils;->restoreRingtoneIfNotExist(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    :cond_3
    const-string v2, "ringtone"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120c42

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 143
    :cond_4
    const-string v2, "notification_sound"

    .line 144
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120bde

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 148
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120bdd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 153
    :cond_6
    :goto_2
    return-object p1
.end method

.method private static restoreRingtoneIfNotExist(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "settingName"    # Ljava/lang/String;

    .line 481
    nop

    .line 482
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 481
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "ringtoneUri":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 484
    return-void

    .line 486
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 487
    .local v8, "res":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 489
    .local v1, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "title"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v9, v2

    .line 492
    .end local v1    # "c":Landroid/database/Cursor;
    .local v9, "c":Landroid/database/Cursor;
    :try_start_1
    invoke-static {v9}, Lcom/oneplus/settings/utils/OPNotificationUtils;->hasData(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 493
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "_display_name=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .line 497
    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPNotificationUtils;->getDefaultRingtoneFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    aput-object v1, v5, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 493
    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    .end local v9    # "c":Landroid/database/Cursor;
    .restart local v1    # "c":Landroid/database/Cursor;
    :try_start_2
    invoke-static {v1}, Lcom/oneplus/settings/utils/OPNotificationUtils;->hasData(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 500
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 501
    .local v2, "rowId":I
    nop

    .line 503
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, v2

    .line 506
    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 508
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 502
    invoke-static {v3, p1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v2    # "rowId":I
    goto :goto_0

    .line 514
    .end local v1    # "c":Landroid/database/Cursor;
    .restart local v9    # "c":Landroid/database/Cursor;
    :cond_1
    move-object v1, v9

    .end local v9    # "c":Landroid/database/Cursor;
    .restart local v1    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 515
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 514
    .end local v1    # "c":Landroid/database/Cursor;
    .restart local v9    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    move-object v1, v9

    goto :goto_4

    .line 511
    :catch_0
    move-exception v2

    move-object v1, v9

    goto :goto_2

    .line 514
    .end local v9    # "c":Landroid/database/Cursor;
    .restart local v1    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    goto :goto_4

    .line 511
    :catch_1
    move-exception v2

    .line 512
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v3, "OPNotificationUtils"

    const-string v4, "RemoteException in restoreRingtoneIfNotExist()"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 514
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_3

    goto :goto_1

    .line 518
    :cond_3
    :goto_3
    return-void

    .line 514
    :goto_4
    if-eqz v1, :cond_4

    .line 515
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method public static validForProvider(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file_uri"    # Landroid/net/Uri;

    .line 394
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 395
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 396
    const/4 v1, 0x1

    return v1

    .line 399
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    :cond_0
    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 400
    :goto_0
    const-string v0, "OPNotificationUtils"

    const-string v1, "validForProvider: false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v0, 0x0

    return v0
.end method
