.class public Lcom/android/server/voiceinteraction/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;,
        Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelContract;
    }
.end annotation


# static fields
.field private static final CREATE_TABLE_SOUND_MODEL:Ljava/lang/String; = "CREATE TABLE sound_model(model_uuid TEXT,vendor_uuid TEXT,keyphrase_id INTEGER,type INTEGER,data BLOB,recognition_modes INTEGER,locale TEXT,hint_text TEXT,users TEXT,PRIMARY KEY (keyphrase_id,locale,users))"

.field static final DBG:Z = false

.field private static final NAME:Ljava/lang/String; = "sound_model.db"

.field static final TAG:Ljava/lang/String; = "SoundModelDBHelper"

.field private static final VERSION:I = 0x6


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    const-string/jumbo v0, "sound_model.db"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 84
    return-void
.end method

.method private static getArrayForCommaSeparatedString(Ljava/lang/String;)[I
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .line 346
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    const/4 v0, 0x0

    return-object v0

    .line 349
    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "usersStr":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [I

    .line 351
    .local v1, "users":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 352
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private static getCommaSeparatedString([I)Ljava/lang/String;
    .locals 3
    .param p0, "users"    # [I

    .line 332
    if-nez p0, :cond_0

    .line 333
    const-string v0, ""

    return-object v0

    .line 335
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 337
    if-eqz v1, :cond_1

    .line 338
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    :cond_1
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public deleteKeyphraseSoundModel(IILjava/lang/String;)Z
    .locals 6
    .param p1, "keyphraseId"    # I
    .param p2, "userHandle"    # I
    .param p3, "bcp47Locale"    # Ljava/lang/String;

    .line 187
    invoke-static {p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p3

    .line 188
    monitor-enter p0

    .line 189
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object v0

    .line 191
    .local v0, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 192
    monitor-exit p0

    return v1

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 197
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "model_uuid=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    .line 198
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 200
    .local v3, "soundModelClause":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v4, "sound_model"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    nop

    .line 202
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0

    .line 200
    return v1

    .line 202
    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1

    .line 204
    .end local v0    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "soundModelClause":Ljava/lang/String;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .locals 24
    .param p1, "keyphraseId"    # I
    .param p2, "userHandle"    # I
    .param p3, "bcp47Locale"    # Ljava/lang/String;

    .line 216
    invoke-static/range {p3 .. p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 217
    .end local p3    # "bcp47Locale":Ljava/lang/String;
    .local v1, "bcp47Locale":Ljava/lang/String;
    monitor-enter p0

    .line 219
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT  * FROM sound_model WHERE keyphrase_id= \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move/from16 v2, p1

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\' AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "locale"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object v9, v0

    .line 229
    .local v9, "selectQuery":Ljava/lang/String;
    const/4 v3, 0x0

    .line 230
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    move-object v4, v10

    .line 235
    .local v4, "c":Landroid/database/Cursor;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object v11, v0

    .line 236
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v11, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_3
    invoke-virtual {v11, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v12, v0

    .line 238
    .end local v4    # "c":Landroid/database/Cursor;
    .local v12, "c":Landroid/database/Cursor;
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 240
    :goto_0
    const-string/jumbo v0, "type"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 241
    .local v0, "type":I
    if-eqz v0, :cond_0

    .line 245
    nop

    .line 307
    .end local v0    # "type":I
    .end local v1    # "bcp47Locale":Ljava/lang/String;
    .local v20, "bcp47Locale":Ljava/lang/String;
    :goto_1
    move-object/from16 v20, v1

    move/from16 v1, p2

    goto/16 :goto_4

    .line 248
    .end local v20    # "bcp47Locale":Ljava/lang/String;
    .restart local v0    # "type":I
    .restart local v1    # "bcp47Locale":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "model_uuid"

    .line 249
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 248
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v13, v3

    .line 250
    .local v13, "modelUuid":Ljava/lang/String;
    if-nez v13, :cond_1

    .line 251
    :try_start_5
    const-string v3, "SoundModelDBHelper"

    const-string v4, "Ignoring SoundModel since it doesn\'t specify an ID"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 252
    goto :goto_1

    .line 323
    .end local v0    # "type":I
    .end local v13    # "modelUuid":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v20, v1

    goto/16 :goto_b

    .line 312
    :catch_0
    move-exception v0

    move-object/from16 v20, v1

    goto/16 :goto_6

    .line 255
    .restart local v0    # "type":I
    .restart local v13    # "modelUuid":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 256
    .local v3, "vendorUuidString":Ljava/lang/String;
    :try_start_6
    const-string/jumbo v4, "vendor_uuid"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move v14, v4

    .line 257
    .local v14, "vendorUuidColumn":I
    const/4 v4, -0x1

    if-eq v14, v4, :cond_2

    .line 258
    :try_start_7
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v3, v4

    .line 260
    .end local v3    # "vendorUuidString":Ljava/lang/String;
    .local v8, "vendorUuidString":Ljava/lang/String;
    :cond_2
    move-object v8, v3

    :try_start_8
    const-string v3, "data"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    move-object v4, v3

    .line 261
    .local v4, "data":[B
    const-string/jumbo v3, "recognition_modes"

    .line 262
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 261
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 263
    .local v5, "recognitionModes":I
    const-string/jumbo v3, "users"

    .line 264
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 263
    invoke-static {v3}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getArrayForCommaSeparatedString(Ljava/lang/String;)[I

    move-result-object v3

    .line 265
    .local v3, "users":[I
    const-string/jumbo v6, "locale"

    .line 266
    invoke-interface {v12, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 265
    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 267
    .local v6, "modelLocale":Ljava/lang/String;
    const-string v7, "hint_text"

    .line 268
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 267
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 271
    .local v7, "text":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 273
    :try_start_9
    const-string v10, "SoundModelDBHelper"

    move v15, v0

    const-string v0, "Ignoring SoundModel since it doesn\'t specify users"

    .line 273
    .end local v0    # "type":I
    .local v15, "type":I
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 274
    goto :goto_1

    .line 277
    .end local v15    # "type":I
    .restart local v0    # "type":I
    :cond_3
    move v15, v0

    .line 277
    .end local v0    # "type":I
    .restart local v15    # "type":I
    const/4 v0, 0x0

    .line 278
    .local v0, "isAvailableForCurrentUser":Z
    :try_start_a
    array-length v10, v3

    const/16 v16, 0x0

    move/from16 v17, v0

    move/from16 v0, v16

    .line 278
    .end local v0    # "isAvailableForCurrentUser":Z
    .local v17, "isAvailableForCurrentUser":Z
    :goto_2
    if-ge v0, v10, :cond_5

    aget v18, v3, v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move/from16 v19, v18

    .line 279
    .local v19, "user":I
    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move/from16 v3, v19

    move/from16 v1, p2

    if-ne v1, v3, :cond_4

    .line 280
    .end local v1    # "bcp47Locale":Ljava/lang/String;
    .end local v19    # "user":I
    .local v3, "user":I
    .restart local v20    # "bcp47Locale":Ljava/lang/String;
    .local v21, "users":[I
    const/4 v0, 0x1

    .line 281
    .end local v17    # "isAvailableForCurrentUser":Z
    .restart local v0    # "isAvailableForCurrentUser":Z
    goto :goto_3

    .line 278
    .end local v0    # "isAvailableForCurrentUser":Z
    .end local v3    # "user":I
    .restart local v17    # "isAvailableForCurrentUser":Z
    :cond_4
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v20

    move-object/from16 v3, v21

    goto :goto_2

    .line 284
    .end local v20    # "bcp47Locale":Ljava/lang/String;
    .end local v21    # "users":[I
    .restart local v1    # "bcp47Locale":Ljava/lang/String;
    .local v3, "users":[I
    :cond_5
    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move/from16 v1, p2

    move/from16 v0, v17

    .line 284
    .end local v1    # "bcp47Locale":Ljava/lang/String;
    .end local v3    # "users":[I
    .end local v17    # "isAvailableForCurrentUser":Z
    .restart local v0    # "isAvailableForCurrentUser":Z
    .restart local v20    # "bcp47Locale":Ljava/lang/String;
    .restart local v21    # "users":[I
    :goto_3
    if-nez v0, :cond_7

    .line 288
    nop

    .line 307
    .end local v0    # "isAvailableForCurrentUser":Z
    .end local v4    # "data":[B
    .end local v5    # "recognitionModes":I
    .end local v6    # "modelLocale":Ljava/lang/String;
    .end local v7    # "text":Ljava/lang/String;
    .end local v8    # "vendorUuidString":Ljava/lang/String;
    .end local v13    # "modelUuid":Ljava/lang/String;
    .end local v14    # "vendorUuidColumn":I
    .end local v15    # "type":I
    .end local v21    # "users":[I
    :goto_4
    :try_start_b
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_5

    .line 240
    :cond_6
    move-object/from16 v1, v20

    const/4 v10, 0x0

    goto/16 :goto_0

    .line 293
    .restart local v0    # "isAvailableForCurrentUser":Z
    .restart local v4    # "data":[B
    .restart local v5    # "recognitionModes":I
    .restart local v6    # "modelLocale":Ljava/lang/String;
    .restart local v7    # "text":Ljava/lang/String;
    .restart local v8    # "vendorUuidString":Ljava/lang/String;
    .restart local v13    # "modelUuid":Ljava/lang/String;
    .restart local v14    # "vendorUuidColumn":I
    .restart local v15    # "type":I
    .restart local v21    # "users":[I
    :cond_7
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-object v10, v3

    .line 294
    .local v10, "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    new-instance v17, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-object/from16 v18, v21

    move-object/from16 v3, v17

    .line 294
    .end local v21    # "users":[I
    .local v18, "users":[I
    move/from16 v22, v0

    move-object v0, v4

    move v4, v2

    .line 294
    .end local v4    # "data":[B
    .local v0, "data":[B
    .local v22, "isAvailableForCurrentUser":Z
    move-object v1, v8

    move-object/from16 v8, v18

    .line 294
    .end local v8    # "vendorUuidString":Ljava/lang/String;
    .local v1, "vendorUuidString":Ljava/lang/String;
    invoke-direct/range {v3 .. v8}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;-><init>(IILjava/lang/String;Ljava/lang/String;[I)V

    aput-object v17, v10, v16

    .line 296
    const/4 v3, 0x0

    .line 297
    .local v3, "vendorUuid":Ljava/util/UUID;
    if-eqz v1, :cond_8

    .line 298
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    move-object v3, v4

    .line 300
    :cond_8
    new-instance v4, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 301
    invoke-static {v13}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v8

    invoke-direct {v4, v8, v3, v0, v10}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;-><init>(Ljava/util/UUID;Ljava/util/UUID;[B[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 306
    .local v4, "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    nop

    .line 323
    :try_start_c
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 324
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 306
    return-object v4

    .line 309
    .end local v0    # "data":[B
    .end local v3    # "vendorUuid":Ljava/util/UUID;
    .end local v4    # "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .end local v5    # "recognitionModes":I
    .end local v6    # "modelLocale":Ljava/lang/String;
    .end local v7    # "text":Ljava/lang/String;
    .end local v10    # "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    .end local v13    # "modelUuid":Ljava/lang/String;
    .end local v14    # "vendorUuidColumn":I
    .end local v15    # "type":I
    .end local v18    # "users":[I
    .end local v20    # "bcp47Locale":Ljava/lang/String;
    .end local v22    # "isAvailableForCurrentUser":Z
    .local v1, "bcp47Locale":Ljava/lang/String;
    :cond_9
    move-object/from16 v20, v1

    .line 309
    .end local v1    # "bcp47Locale":Ljava/lang/String;
    .restart local v20    # "bcp47Locale":Ljava/lang/String;
    :goto_5
    :try_start_d
    const-string v0, "SoundModelDBHelper"

    const-string v1, "No SoundModel available for the given keyphrase"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 323
    :try_start_e
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 324
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 326
    goto :goto_a

    .line 323
    :catchall_1
    move-exception v0

    goto :goto_b

    .line 312
    :catch_1
    move-exception v0

    .line 312
    .end local v11    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "c":Landroid/database/Cursor;
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v4, "c":Landroid/database/Cursor;
    :goto_6
    move-object v3, v11

    move-object v4, v12

    goto :goto_9

    .line 323
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "c":Landroid/database/Cursor;
    .end local v20    # "bcp47Locale":Ljava/lang/String;
    .restart local v1    # "bcp47Locale":Ljava/lang/String;
    .restart local v11    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "c":Landroid/database/Cursor;
    :catchall_2
    move-exception v0

    move-object/from16 v20, v1

    goto :goto_8

    .line 312
    :catch_2
    move-exception v0

    move-object/from16 v20, v1

    move-object v3, v11

    move-object v4, v12

    goto :goto_9

    .line 323
    .end local v12    # "c":Landroid/database/Cursor;
    .restart local v4    # "c":Landroid/database/Cursor;
    :catchall_3
    move-exception v0

    move-object/from16 v20, v1

    goto :goto_7

    .line 312
    :catch_3
    move-exception v0

    move-object/from16 v20, v1

    move-object v3, v11

    goto :goto_9

    .line 323
    .end local v11    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_4
    move-exception v0

    move-object/from16 v20, v1

    move-object v11, v3

    .line 323
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "c":Landroid/database/Cursor;
    .restart local v11    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "c":Landroid/database/Cursor;
    :goto_7
    move-object v12, v4

    .line 323
    .end local v1    # "bcp47Locale":Ljava/lang/String;
    .restart local v20    # "bcp47Locale":Ljava/lang/String;
    :goto_8
    goto :goto_b

    .line 312
    .end local v11    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v20    # "bcp47Locale":Ljava/lang/String;
    .restart local v1    # "bcp47Locale":Ljava/lang/String;
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "c":Landroid/database/Cursor;
    :catch_4
    move-exception v0

    move-object/from16 v20, v1

    .line 313
    .end local v1    # "bcp47Locale":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v20    # "bcp47Locale":Ljava/lang/String;
    :goto_9
    :try_start_f
    const-string v1, "SoundModelDBHelper"

    const-string v5, "getKeyphraseSoundModel Error"

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 323
    .end local v0    # "ex":Ljava/lang/Exception;
    :try_start_10
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 324
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 326
    nop

    .line 327
    move-object v11, v3

    move-object v12, v4

    .line 327
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "c":Landroid/database/Cursor;
    .restart local v11    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "c":Landroid/database/Cursor;
    :goto_a
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 323
    .end local v11    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "c":Landroid/database/Cursor;
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "c":Landroid/database/Cursor;
    :catchall_5
    move-exception v0

    move-object v11, v3

    move-object v12, v4

    .line 323
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "c":Landroid/database/Cursor;
    .restart local v11    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "c":Landroid/database/Cursor;
    :goto_b
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 324
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 328
    .end local v9    # "selectQuery":Ljava/lang/String;
    .end local v11    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v20    # "bcp47Locale":Ljava/lang/String;
    .restart local v1    # "bcp47Locale":Ljava/lang/String;
    :catchall_6
    move-exception v0

    goto :goto_c

    :catchall_7
    move-exception v0

    move/from16 v2, p1

    :goto_c
    move-object/from16 v20, v1

    .line 328
    .end local v1    # "bcp47Locale":Ljava/lang/String;
    .restart local v20    # "bcp47Locale":Ljava/lang/String;
    :goto_d
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    throw v0

    :catchall_8
    move-exception v0

    goto :goto_d
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 89
    const-string v0, "CREATE TABLE sound_model(model_uuid TEXT,vendor_uuid TEXT,keyphrase_id INTEGER,type INTEGER,data BLOB,recognition_modes INTEGER,locale TEXT,hint_text TEXT,users TEXT,PRIMARY KEY (keyphrase_id,locale,users))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 94
    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    .line 96
    const-string v0, "DROP TABLE IF EXISTS sound_model"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 100
    :cond_0
    if-ne p2, v0, :cond_1

    .line 101
    const-string v0, "SoundModelDBHelper"

    const-string v1, "Adding vendor UUID column"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v0, "ALTER TABLE sound_model ADD COLUMN vendor_uuid TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    add-int/lit8 p2, p2, 0x1

    .line 107
    :cond_1
    :goto_0
    const/4 v0, 0x5

    if-ne p2, v0, :cond_7

    .line 112
    const-string v1, "SELECT * FROM sound_model"

    .line 113
    .local v1, "selectQuery":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 114
    .local v2, "c":Landroid/database/Cursor;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v3, "old_records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;>;"
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    .line 119
    :cond_2
    :try_start_1
    new-instance v4, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    invoke-direct {v4, v0, v2}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;-><init>(ILandroid/database/Cursor;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    goto :goto_1

    .line 120
    :catch_0
    move-exception v4

    .line 121
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "SoundModelDBHelper"

    const-string v6, "Failed to extract V5 record"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_2

    .line 126
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 127
    nop

    .line 128
    const-string v0, "DROP TABLE IF EXISTS sound_model"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 130
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    .line 131
    .local v4, "record":Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;
    invoke-virtual {v4, v3}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->ifViolatesV6PrimaryKeyIsFirstOfAnyDuplicates(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 133
    const/4 v5, 0x6

    :try_start_3
    invoke-virtual {v4, v5, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->writeToDatabase(ILandroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v5

    .line 134
    .local v5, "return_value":J
    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-nez v7, :cond_4

    .line 135
    const-string v7, "SoundModelDBHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Database write failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->modelUuid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 140
    .end local v5    # "return_value":J
    :cond_4
    goto :goto_3

    .line 138
    :catch_1
    move-exception v5

    .line 139
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "SoundModelDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update V6 record "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->modelUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .end local v4    # "record":Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    goto :goto_2

    .line 143
    :cond_6
    add-int/lit8 p2, p2, 0x1

    .end local v1    # "selectQuery":Ljava/lang/String;
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "old_records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;>;"
    goto :goto_4

    .line 126
    .restart local v1    # "selectQuery":Ljava/lang/String;
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v3    # "old_records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 145
    .end local v1    # "selectQuery":Ljava/lang/String;
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "old_records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;>;"
    :cond_7
    :goto_4
    return-void
.end method

.method public updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Z
    .locals 9
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 153
    monitor-enter p0

    .line 154
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 155
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 156
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "model_uuid"

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->vendorUuid:Ljava/util/UUID;

    if-eqz v2, :cond_0

    .line 158
    const-string/jumbo v2, "vendor_uuid"

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->vendorUuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    const-string/jumbo v2, "type"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string v2, "data"

    iget-object v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->data:[B

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 163
    iget-object v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    array-length v2, v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 164
    const-string/jumbo v2, "keyphrase_id"

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v5, v5, v3

    iget v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    const-string/jumbo v2, "recognition_modes"

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v5, v5, v3

    iget v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->recognitionModes:I

    .line 166
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 165
    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const-string/jumbo v2, "users"

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v5, v5, v3

    iget-object v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    .line 168
    invoke-static {v5}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getCommaSeparatedString([I)Ljava/lang/String;

    move-result-object v5

    .line 167
    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string/jumbo v2, "locale"

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v5, v5, v3

    iget-object v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v2, "hint_text"

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v5, v5, v3

    iget-object v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 172
    :try_start_1
    const-string/jumbo v2, "sound_model"

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v0, v2, v5, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-eqz v2, :cond_1

    .line 175
    move v3, v4

    goto :goto_0

    .line 172
    :cond_1
    nop

    .line 175
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0

    .line 172
    return v3

    .line 175
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v2

    .line 178
    :cond_2
    monitor-exit p0

    return v3

    .line 179
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
