.class public Lcom/oneplus/settings/ringtone/OPRingtoneManager;
.super Ljava/lang/Object;
.source "OPRingtoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;
    }
.end annotation


# static fields
.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX_RO:Ljava/lang/String; = "ro.config."

.field public static final EXTRA_RINGTONE_DEFAULT_URI:Ljava/lang/String; = "android.intent.extra.ringtone.DEFAULT_URI"

.field public static final EXTRA_RINGTONE_EXISTING_URI:Ljava/lang/String; = "android.intent.extra.ringtone.EXISTING_URI"

.field public static final EXTRA_RINGTONE_FOR_CONTACTS:Ljava/lang/String; = "ringtone_for_contacts"

.field public static final EXTRA_RINGTONE_PICKED_URI:Ljava/lang/String; = "android.intent.extra.ringtone.PICKED_URI"

.field public static final EXTRA_RINGTONE_SHOW_DEFAULT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_DEFAULT"

.field public static final EXTRA_RINGTONE_SIMID:Ljava/lang/String; = "oneplus.intent.extra.ringtone.simid"

.field public static final EXTRA_RINGTONE_TITLE:Ljava/lang/String; = "android.intent.extra.ringtone.TITLE"

.field public static final EXTRA_RINGTONE_TYPE:Ljava/lang/String; = "android.intent.extra.ringtone.TYPE"

.field public static final ID_COLUMN_INDEX:I = 0x0

.field private static final INTERNAL_COLUMNS:[Ljava/lang/String;

.field public static final MAX_NUM_RINGTONES:I = 0x2

.field private static final OP_RINGTONE1_DEFUALT:Ljava/lang/String; = "op_ringtone1_df"

.field private static final OP_RINGTONE2_DEFUALT:Ljava/lang/String; = "op_ringtone2_df"

.field private static final OP_RINGTONE_DEFUALT:Ljava/lang/String; = "op_ringtone_df"

.field private static final OP_SIM_SWITCH:Ljava/lang/String; = "op_sim_sw"

.field public static final RINGTONE_2:Ljava/lang/String; = "ringtone_2"

.field private static final TAG:Ljava/lang/String; = "RingtoneManager"

.field public static final TITLE_COLUMN_INDEX:I = 0x1

.field public static final TYPE_ALARM:I = 0x4

.field public static final TYPE_ALL:I = 0xf

.field public static final TYPE_NOTIFICATION:I = 0x2

.field public static final TYPE_RINGTONE:I = 0x1

.field public static final TYPE_SMS:I = 0x8

.field public static final URI_COLUMN_INDEX:I = 0x2

.field private static mDefaultUri:Landroid/net/Uri;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private final mFilterColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 101
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "title"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "title_key"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "_data"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    .line 371
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mDefaultUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mType:I

    .line 107
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mContext:Landroid/content/Context;

    .line 108
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setType(I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mType:I

    .line 120
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mContext:Landroid/content/Context;

    .line 121
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setType(I)V

    .line 122
    return-void
.end method

.method private static constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 189
    .local p0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 190
    const/4 v0, 0x0

    return-object v0

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 196
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=1 or "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 199
    .end local v1    # "i":I
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 204
    :cond_2
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static constructWhereClause(I)[Ljava/lang/String;
    .locals 4
    .param p0, "type"    # I

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    .line 220
    const-string v1, "/system/media/audio/ringtones/%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 213
    :cond_0
    const-string v1, "/system/media/audio/alarms/%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    goto :goto_0

    .line 217
    :cond_1
    const-string v1, "/system/media/audio/notifications/%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    nop

    .line 223
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    return-object v1
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 318
    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "setting":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 320
    return-object v1

    .line 321
    :cond_0
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    .line 322
    const-string v0, "op_ringtone_df"

    .line 323
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isRingSimSwitchOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 324
    nop

    .line 325
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ringtone"

    .line 324
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "ss":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 327
    if-nez v2, :cond_1

    const-string v4, "none"

    goto :goto_0

    .line 326
    :cond_1
    move-object v4, v2

    :goto_0
    invoke-static {v3, v0, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 330
    .end local v2    # "ss":Ljava/lang/String;
    :cond_2
    nop

    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 330
    invoke-static {v2, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "uriString":Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 333
    return-object v1

    .line 335
    :cond_3
    if-eqz v2, :cond_8

    and-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_4

    goto :goto_4

    .line 339
    :cond_4
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    .line 340
    .local v3, "ringToneUri":Landroid/net/Uri;
    nop

    .line 342
    .local v1, "cursor":Landroid/database/Cursor;
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

    move-object v1, v4

    .line 344
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_5

    .line 345
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    .line 350
    :cond_5
    if-eqz v1, :cond_6

    .line 351
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 350
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 347
    :catch_0
    move-exception v4

    .line 348
    .local v4, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v5, "RingtoneManager"

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

    .line 350
    .end local v4    # "ex":Landroid/database/sqlite/SQLiteException;
    if-eqz v1, :cond_6

    goto :goto_1

    .line 353
    :cond_6
    :goto_2
    return-object v3

    .line 350
    :goto_3
    if-eqz v1, :cond_7

    .line 351
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v4

    .line 336
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v3    # "ringToneUri":Landroid/net/Uri;
    :cond_8
    :goto_4
    if-eqz v2, :cond_9

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    nop

    :cond_9
    return-object v1
.end method

.method public static getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 238
    const/4 v0, 0x0

    if-ltz p1, :cond_9

    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    goto/16 :goto_5

    .line 242
    :cond_0
    if-nez p1, :cond_1

    .line 243
    const-string v1, "ringtone"

    .line 244
    .local v1, "setting":Ljava/lang/String;
    const-string v2, "op_ringtone1_df"

    .local v2, "setting1":Ljava/lang/String;
    goto :goto_0

    .line 246
    .end local v1    # "setting":Ljava/lang/String;
    .end local v2    # "setting1":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ringtone_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    .restart local v1    # "setting":Ljava/lang/String;
    const-string v2, "op_ringtone2_df"

    .line 249
    .restart local v2    # "setting1":Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isRingSimSwitchOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "ss":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 253
    if-nez v3, :cond_2

    const-string v5, "none"

    goto :goto_1

    .line 252
    :cond_2
    move-object v5, v3

    :goto_1
    invoke-static {v4, v2, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 255
    .end local v3    # "ss":Ljava/lang/String;
    :cond_3
    nop

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 255
    invoke-static {v3, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "uriString":Ljava/lang/String;
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    .line 259
    .local v4, "ringToneUri":Landroid/net/Uri;
    if-nez v3, :cond_4

    .line 260
    return-object v4

    .line 262
    :cond_4
    const-string v5, "none"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 263
    return-object v0

    .line 266
    :cond_5
    nop

    .line 268
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v0, v5

    .line 270
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_6

    .line 271
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v5

    .line 276
    :cond_6
    if-eqz v0, :cond_7

    .line 277
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 276
    :catchall_0
    move-exception v5

    goto :goto_4

    .line 273
    :catch_0
    move-exception v5

    .line 274
    .local v5, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v6, "RingtoneManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ex "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    .end local v5    # "ex":Landroid/database/sqlite/SQLiteException;
    if-eqz v0, :cond_7

    goto :goto_2

    .line 280
    :cond_7
    :goto_3
    return-object v4

    .line 276
    :goto_4
    if-eqz v0, :cond_8

    .line 277
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v5

    .line 239
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "setting":Ljava/lang/String;
    .end local v2    # "setting1":Ljava/lang/String;
    .end local v3    # "uriString":Ljava/lang/String;
    .end local v4    # "ringToneUri":Landroid/net/Uri;
    :cond_9
    :goto_5
    return-object v0
.end method

.method private static getDefaultRingtoneFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "settingName"    # Ljava/lang/String;

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.config."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "defaultRingtoneFilenameGet":Ljava/lang/String;
    return-object v0
.end method

.method private getInternalRingtones()Landroid/database/Cursor;
    .locals 6

    .line 179
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 181
    invoke-static {v3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_data"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " like ?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mType:I

    .line 183
    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->constructWhereClause(I)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "_display_name"

    .line 179
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "type"    # I
    .param p3, "simid"    # I

    .line 512
    new-instance v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 513
    .local v0, "result":Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;
    if-eqz p1, :cond_7

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 516
    :cond_0
    const-string v2, "RingtoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ringtoneUri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    nop

    .line 519
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "internal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 520
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v2, "title"

    const-string v4, "_data"

    const-string v5, "mime_type"

    filled-new-array {v2, v4, v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 527
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v2, "_display_name"

    const-string v4, "_data"

    const-string v5, "mime_type"

    const-string v6, "title"

    filled-new-array {v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 534
    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 535
    invoke-static {p0, p1, v1, p2, p3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->updateRingtoneForInternal(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v2

    .line 537
    .local v2, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    .line 538
    iget-object v3, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 539
    const-string v3, "title"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    .line 541
    :cond_2
    iput-object v2, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    nop

    .line 547
    if-eqz v1, :cond_3

    .line 548
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 542
    :cond_3
    return-object v0

    .line 547
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_4
    if-eqz v1, :cond_5

    .line 548
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 547
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 544
    :catch_0
    move-exception v2

    .line 545
    .local v2, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    .end local v2    # "ex":Landroid/database/sqlite/SQLiteException;
    if-eqz v1, :cond_5

    goto :goto_1

    .line 550
    :cond_5
    :goto_2
    return-object v0

    .line 547
    :goto_3
    if-eqz v1, :cond_6

    .line 548
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    .line 514
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_7
    :goto_4
    return-object v0
.end method

.method public static getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .line 420
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public static getSettingForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 358
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 359
    const-string v0, "ringtone"

    return-object v0

    .line 360
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 361
    const-string v0, "notification_sound"

    return-object v0

    .line 362
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 363
    const-string v0, "alarm_alert"

    return-object v0

    .line 364
    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    .line 365
    const-string v0, "mms_notification"

    return-object v0

    .line 367
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "c":Landroid/database/Cursor;
    sget-object v1, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mDefaultUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 376
    sget-object v1, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mDefaultUri:Landroid/net/Uri;

    return-object v1

    .line 383
    :cond_0
    nop

    .line 384
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "_display_name=?"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const-string v1, "ringtone"

    .line 388
    invoke-static {p0, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getDefaultRingtoneFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    aput-object v1, v6, v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 384
    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 390
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 392
    .local v1, "id":J
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mDefaultUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    .end local v1    # "id":J
    :cond_1
    if-eqz v0, :cond_2

    .line 399
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 398
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 395
    :catch_0
    move-exception v1

    .line 396
    .local v1, "re":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "RingtoneManager"

    const-string v3, "RemoteException: "

    invoke-static {v2, v3, v1}, Lcom/oneplus/settings/ringtone/OPMyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    .end local v1    # "re":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    goto :goto_0

    .line 402
    :cond_2
    :goto_1
    sget-object v1, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mDefaultUri:Landroid/net/Uri;

    return-object v1

    .line 398
    :goto_2
    if-eqz v0, :cond_3

    .line 399
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public static getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 413
    nop

    .line 414
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 415
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 413
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isDefault(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "ringtoneUri"    # Landroid/net/Uri;

    .line 755
    invoke-static {p0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static isRingSimSwitchOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 751
    nop

    .line 750
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_sim_sw"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 751
    goto :goto_0

    .line 750
    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static isSystemRingtone(Landroid/content/Context;Landroid/net/Uri;I)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "type"    # I

    .line 425
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 426
    return v0

    .line 428
    :cond_0
    const/4 v1, 0x0

    .line 430
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "media"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 431
    nop

    .line 442
    if-eqz v1, :cond_1

    .line 443
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 431
    :cond_1
    return v0

    .line 433
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "_data like ?"

    .line 435
    invoke-static {p2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->constructWhereClause(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 433
    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 436
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v2, :cond_4

    .line 437
    const/4 v0, 0x1

    .line 442
    if-eqz v1, :cond_3

    .line 443
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 437
    :cond_3
    return v0

    .line 442
    :cond_4
    if-eqz v1, :cond_5

    .line 443
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 442
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 439
    :catch_0
    move-exception v2

    .line 440
    .local v2, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 442
    .end local v2    # "ex":Landroid/database/sqlite/SQLiteException;
    if-eqz v1, :cond_5

    goto :goto_0

    .line 445
    :cond_5
    :goto_1
    return v0

    .line 442
    :goto_2
    if-eqz v1, :cond_6

    .line 443
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 229
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mActivity:Landroid/app/Activity;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static ringtoneRestoreFromDefault(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "sound_uri"    # Landroid/net/Uri;

    .line 453
    const-string v1, "ro.config."

    .line 454
    .local v1, "RO_PREFIX":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "settingKey":Ljava/lang/String;
    move-object/from16 v2, p2

    .line 457
    .local v2, "defaultUri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 459
    .local v3, "ringerType":Ljava/lang/String;
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_0

    .line 460
    const-string v3, "is_ringtone"

    .line 463
    :cond_0
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_1

    .line 464
    const-string v3, "is_notification"

    .line 467
    :cond_1
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_2

    .line 468
    const-string v3, "is_alarm"

    .line 471
    :cond_2
    if-eqz v3, :cond_5

    .line 472
    const-string v4, "ringtone"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 473
    const-string v0, "ringtone"

    .line 475
    .end local v0    # "settingKey":Ljava/lang/String;
    .local v4, "settingKey":Ljava/lang/String;
    :cond_3
    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ringtone"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 476
    .local v5, "defaultRingtoneName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 477
    .local v6, "fileName":Ljava/lang/String;
    const-string v0, "."

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 478
    .local v8, "title":Ljava/lang/String;
    const-string v0, "RingtoneManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ringtoneRestoreFromDefault: title = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const/4 v0, 0x0

    move-object v9, v0

    .line 482
    .local v9, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "=1 and "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "title"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "=?"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v0, 0x1

    new-array v14, v0, [Ljava/lang/String;

    aput-object v8, v14, v7

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 486
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 487
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 488
    .local v10, "id":J
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    move-object v2, v0

    .line 489
    const-string v0, "RingtoneManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ringtoneRestoreFromDefault: ["

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "] = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v10    # "id":J
    goto :goto_0

    .line 494
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "re":Ljava/lang/Exception;
    :try_start_1
    const-string v7, "RingtoneManager"

    const-string v10, "RemoteException: "

    invoke-static {v7, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    .end local v0    # "re":Ljava/lang/Exception;
    .end local v5    # "defaultRingtoneName":Ljava/lang/String;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "c":Landroid/database/Cursor;
    :cond_4
    :goto_0
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 495
    goto :goto_2

    .line 494
    .restart local v5    # "defaultRingtoneName":Ljava/lang/String;
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v8    # "title":Ljava/lang/String;
    .restart local v9    # "c":Landroid/database/Cursor;
    :goto_1
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 498
    .end local v4    # "settingKey":Ljava/lang/String;
    .end local v5    # "defaultRingtoneName":Ljava/lang/String;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "c":Landroid/database/Cursor;
    .local v0, "settingKey":Ljava/lang/String;
    :cond_5
    move-object v4, v0

    .end local v0    # "settingKey":Ljava/lang/String;
    .restart local v4    # "settingKey":Ljava/lang/String;
    :goto_2
    return-object v2
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .line 634
    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "setting":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 636
    return-void

    .line 639
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 640
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_ringtone_df"

    .line 642
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, "none"

    .line 640
    :goto_0
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 644
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ringtone_2"

    .line 646
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 644
    :goto_1
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 649
    :cond_3
    invoke-static {p0, p1, p2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 650
    return-void
.end method

.method public static setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .line 296
    if-ltz p1, :cond_4

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    goto :goto_3

    .line 300
    :cond_0
    if-nez p1, :cond_2

    .line 301
    const-string v0, "ringtone"

    .line 302
    .local v0, "setting":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_ringtone1_df"

    .line 304
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, "none"

    .line 302
    :goto_0
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 306
    .end local v0    # "setting":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ringtone_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    .restart local v0    # "setting":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_ringtone2_df"

    .line 309
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    const-string v3, "none"

    .line 307
    :goto_1
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 314
    :goto_2
    invoke-static {p0, p1, p2}, Landroid/media/RingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 315
    return-void

    .line 297
    .end local v0    # "setting":Ljava/lang/String;
    :cond_4
    :goto_3
    return-void
.end method

.method private setFilterColumnsList(I)V
    .locals 2
    .param p1, "type"    # I

    .line 136
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 137
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 140
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 144
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_1
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_2

    .line 148
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    .line 152
    const-string v1, "is_alarm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_3
    return-void
.end method

.method public static setRingSimSwitch(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .line 745
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_sim_sw"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 747
    return-void
.end method

.method public static transToId(Ljava/lang/String;)J
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 623
    const-wide/16 v0, -0x1

    .line 625
    .local v0, "id":J
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 628
    goto :goto_0

    .line 626
    :catch_0
    move-exception v2

    .line 627
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 629
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-wide v0
.end method

.method public static updateActualRingtone(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 653
    nop

    .line 654
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_ringtone_df"

    .line 653
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "ringtoneUri":Ljava/lang/String;
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 656
    .local v1, "ringUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ringtone"

    .line 658
    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const-string v5, "none"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 656
    :goto_0
    move-object v5, v4

    goto :goto_1

    .line 659
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    goto :goto_0

    .line 656
    :goto_1
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 660
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ringtone_2"

    .line 662
    if-eqz v0, :cond_4

    const-string v5, "none"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 663
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    .line 660
    :cond_5
    :goto_2
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 664
    return-void
.end method

.method public static updateActualRingtone2(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 695
    nop

    .line 696
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_ringtone1_df"

    .line 695
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, "ringtoneUri":Ljava/lang/String;
    nop

    .line 698
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_ringtone2_df"

    .line 697
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 699
    .local v1, "ringtoneUri1":Ljava/lang/String;
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    .line 700
    .local v2, "ringUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ringtone"

    .line 702
    const/4 v5, 0x0

    if-eqz v0, :cond_1

    const-string v6, "none"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 700
    :goto_0
    move-object v6, v5

    goto :goto_1

    .line 703
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    goto :goto_0

    .line 700
    :goto_1
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 704
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ringtone_2"

    .line 706
    if-eqz v1, :cond_4

    const-string v6, "none"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    .line 707
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    .line 704
    :cond_5
    :goto_2
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 708
    return-void
.end method

.method public static updateDb(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringUri"    # Landroid/net/Uri;
    .param p2, "type"    # I

    .line 725
    if-nez p1, :cond_0

    .line 726
    return-void

    .line 728
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 729
    .local v0, "values":Landroid/content/ContentValues;
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    const/16 v1, 0x8

    if-eq p2, v1, :cond_2

    .line 738
    const-string v1, "is_ringtone"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 731
    :cond_1
    const-string v1, "is_alarm"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 732
    goto :goto_0

    .line 735
    :cond_2
    const-string v1, "is_notification"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 736
    nop

    .line 741
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 742
    return-void
.end method

.method public static updateDefaultRingtone(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 711
    nop

    .line 712
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ringtone"

    .line 711
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, "ringtoneUri":Ljava/lang/String;
    nop

    .line 714
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ringtone_2"

    .line 713
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 716
    .local v1, "ringtoneUri1":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "op_ringtone1_df"

    .line 718
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, "none"

    .line 716
    :goto_0
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 719
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "op_ringtone2_df"

    .line 721
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, "none"

    .line 719
    :goto_1
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 722
    return-void
.end method

.method public static updateRingtoneForInternal(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;II)Landroid/net/Uri;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "cusor"    # Landroid/database/Cursor;
    .param p3, "type"    # I
    .param p4, "simid"    # I

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 559
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 560
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 559
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 561
    return-object p1

    .line 563
    :cond_0
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 564
    .local v5, "path":Ljava/lang/String;
    if-eqz v5, :cond_b

    const-string v6, "/system/media/audio/ringtones/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-ne v3, v4, :cond_1

    goto/16 :goto_6

    .line 567
    :cond_1
    const-string v6, "/storage/emulated/legacy"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 568
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 569
    .local v7, "title":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 570
    .local v9, "mimetype":Ljava/lang/String;
    sget-object v14, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 572
    .local v14, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "_id"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v12

    const-string v13, "_data=?"

    new-array v11, v4, [Ljava/lang/String;

    aput-object v5, v11, v6

    const/4 v15, 0x0

    .line 573
    move-object/from16 v16, v11

    move-object v11, v14

    move-object v8, v14

    move-object/from16 v14, v16

    .end local v14    # "uri":Landroid/net/Uri;
    .local v8, "uri":Landroid/net/Uri;
    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 576
    .local v10, "cursor1":Landroid/database/Cursor;
    const/16 v11, 0x8

    const/4 v12, 0x0

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 577
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v8, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 578
    .end local p1    # "ringtoneUri":Landroid/net/Uri;
    .local v1, "ringtoneUri":Landroid/net/Uri;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 579
    .local v6, "values":Landroid/content/ContentValues;
    if-ne v3, v4, :cond_2

    .line 580
    const-string v11, "is_ringtone"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v6, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 581
    :cond_2
    const/4 v13, 0x2

    if-eq v3, v13, :cond_4

    if-ne v3, v11, :cond_3

    goto :goto_0

    .line 586
    :cond_3
    const-string v11, "is_alarm"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v6, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 583
    :cond_4
    :goto_0
    const-string v11, "is_notification"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v6, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 588
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1, v6, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 589
    .end local v6    # "values":Landroid/content/ContentValues;
    goto :goto_4

    .line 590
    .end local v1    # "ringtoneUri":Landroid/net/Uri;
    .restart local p1    # "ringtoneUri":Landroid/net/Uri;
    :cond_5
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 591
    .restart local v6    # "values":Landroid/content/ContentValues;
    const-string v13, "_data"

    invoke-virtual {v6, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v13, "title"

    invoke-virtual {v6, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v13, "mime_type"

    invoke-virtual {v6, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    if-ne v3, v4, :cond_6

    .line 597
    const-string v11, "is_ringtone"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v6, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_3

    .line 598
    :cond_6
    const/4 v13, 0x2

    if-eq v3, v13, :cond_8

    if-ne v3, v11, :cond_7

    goto :goto_2

    .line 603
    :cond_7
    const-string v11, "is_alarm"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v6, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_3

    .line 600
    :cond_8
    :goto_2
    const-string v11, "is_notification"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v6, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 606
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_data=\""

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v8, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 608
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 610
    .end local v6    # "values":Landroid/content/ContentValues;
    .end local p1    # "ringtoneUri":Landroid/net/Uri;
    .restart local v1    # "ringtoneUri":Landroid/net/Uri;
    :goto_4
    if-eqz v10, :cond_9

    .line 611
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 613
    :cond_9
    if-lez p4, :cond_a

    .line 614
    add-int/lit8 v4, p4, -0x1

    invoke-static {v0, v4, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_5

    .line 616
    :cond_a
    invoke-static {v0, v3, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 618
    :goto_5
    return-object v1

    .line 565
    .end local v1    # "ringtoneUri":Landroid/net/Uri;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "mimetype":Ljava/lang/String;
    .end local v10    # "cursor1":Landroid/database/Cursor;
    .restart local p1    # "ringtoneUri":Landroid/net/Uri;
    :cond_b
    :goto_6
    return-object p1
.end method

.method public static updateSigleRingtone(Landroid/content/Context;)Landroid/net/Uri;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 667
    nop

    .line 668
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ringtone"

    .line 667
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "uriString":Ljava/lang/String;
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 670
    .local v1, "ringToneUri":Landroid/net/Uri;
    const/4 v2, 0x0

    move-object v3, v2

    .line 672
    .local v3, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 673
    const/4 v1, 0x0

    goto :goto_0

    .line 675
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 676
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 675
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    .line 677
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 678
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 685
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 686
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 685
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 682
    :catch_0
    move-exception v4

    .line 683
    .local v4, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v5, "RingtoneManager"

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

    .line 685
    .end local v4    # "ex":Landroid/database/sqlite/SQLiteException;
    if-eqz v3, :cond_2

    goto :goto_1

    .line 688
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "op_ringtone_df"

    .line 690
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_3
    const-string v6, "none"

    .line 688
    :goto_3
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 691
    if-eqz v1, :cond_4

    move-object v2, v1

    nop

    :cond_4
    return-object v2

    .line 685
    :goto_4
    if-eqz v3, :cond_5

    .line 686
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mCursor:Landroid/database/Cursor;

    return-object v0

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public inferStreamType()I
    .locals 3

    .line 157
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    .line 167
    return v1

    .line 160
    :cond_0
    return v2

    .line 164
    :cond_1
    const/4 v0, 0x5

    return v0
.end method

.method public setType(I)V
    .locals 2
    .param p1, "type"    # I

    .line 126
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 131
    iput p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mType:I

    .line 132
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setFilterColumnsList(I)V

    .line 133
    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Setting filter columns should be done before querying for ringtones."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
