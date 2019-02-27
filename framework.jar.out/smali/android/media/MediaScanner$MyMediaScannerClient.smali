.class Landroid/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mDate:J

.field private final mDateFormatter:Ljava/text/SimpleDateFormat;

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mHeight:I

.field private mIsDrm:Z

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mNoMedia:Z

.field private mPath:Ljava/lang/String;

.field private mScanSuccess:Z

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mWidth:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method public constructor <init>(Landroid/media/MediaScanner;)V
    .locals 1

    .line 657
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDateFormatter:Ljava/text/SimpleDateFormat;

    .line 659
    iget-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDateFormatter:Ljava/text/SimpleDateFormat;

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 660
    return-void
.end method

.method private convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "expected"    # Ljava/lang/String;

    .line 941
    invoke-virtual {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "output":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 943
    const/4 v1, 0x1

    return v1

    .line 945
    :cond_0
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' -> \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const/4 v1, 0x0

    return v1
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .line 1439
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 1440
    .local v0, "pathFilenameStart":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1441
    .local v2, "filenameLength":I
    const/4 v3, 0x0

    invoke-virtual {p1, v0, p2, v3, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int v4, v0, v2

    .line 1442
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_0

    goto :goto_0

    .line 1441
    :cond_0
    move v1, v3

    :goto_0
    return v1
.end method

.method private doesRingtonesPathHaveFilename(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "filename"    # [Ljava/lang/String;

    .line 1426
    const/4 v0, 0x0

    .line 1427
    .local v0, "haveFileName":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Landroid/media/MediaScanner;->access$2600()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1428
    aget-object v2, p2, v1

    invoke-direct {p0, p1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1429
    if-eqz v0, :cond_0

    .line 1430
    goto :goto_1

    .line 1427
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1434
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    .locals 20
    .param p1, "entry"    # Landroid/media/MediaScanner$FileEntry;
    .param p2, "ringtones"    # Z
    .param p3, "notifications"    # Z
    .param p4, "alarms"    # Z
    .param p5, "music"    # Z
    .param p6, "podcasts"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1124
    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1125
    :cond_0
    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 1128
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 1129
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "title"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1130
    .local v0, "title":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1134
    .end local v0    # "title":Ljava/lang/String;
    .local v4, "title":Ljava/lang/String;
    :cond_2
    :goto_0
    move-object v4, v0

    goto :goto_2

    .line 1131
    .end local v4    # "title":Ljava/lang/String;
    .restart local v0    # "title":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v4, "_data"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1132
    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1134
    .end local v0    # "title":Ljava/lang/String;
    .restart local v4    # "title":Ljava/lang/String;
    :goto_2
    const-string v0, "album"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1135
    .local v0, "album":Ljava/lang/String;
    const-string v5, "<unknown>"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    .line 1136
    const-string v5, "_data"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1138
    const/16 v5, 0x2f

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 1139
    .local v7, "lastSlash":I
    if-ltz v7, :cond_6

    .line 1140
    move v8, v6

    .line 1142
    .local v8, "previousSlash":I
    :goto_3
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v5, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 1143
    .local v9, "idx":I
    if-ltz v9, :cond_5

    if-lt v9, v7, :cond_4

    .line 1144
    goto :goto_4

    .line 1146
    :cond_4
    move v8, v9

    .line 1147
    .end local v9    # "idx":I
    goto :goto_3

    .line 1148
    :cond_5
    :goto_4
    if-eqz v8, :cond_6

    .line 1149
    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1150
    const-string v5, "album"

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    .end local v0    # "album":Ljava/lang/String;
    .end local v7    # "lastSlash":I
    .end local v8    # "previousSlash":I
    .local v5, "album":Ljava/lang/String;
    :cond_6
    move-object v5, v0

    iget-wide v7, v2, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 1155
    .local v7, "rowId":J
    iget v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_9

    cmp-long v0, v7, v10

    if-eqz v0, :cond_7

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)I

    move-result v0

    if-eqz v0, :cond_9

    .line 1160
    :cond_7
    const-string/jumbo v0, "is_ringtone"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1161
    const-string/jumbo v0, "is_notification"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1162
    const-string/jumbo v0, "is_alarm"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1163
    const-string/jumbo v0, "is_music"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1164
    const-string/jumbo v0, "is_podcast"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1219
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "album":Ljava/lang/String;
    .local v16, "title":Ljava/lang/String;
    .local v17, "album":Ljava/lang/String;
    :cond_8
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto/16 :goto_8

    .line 1165
    .end local v16    # "title":Ljava/lang/String;
    .end local v17    # "album":Ljava/lang/String;
    .restart local v4    # "title":Ljava/lang/String;
    .restart local v5    # "album":Ljava/lang/String;
    :cond_9
    iget v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v10, 0x1f

    if-eq v0, v10, :cond_a

    iget v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v10, 0x25

    if-eq v0, v10, :cond_a

    iget v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 1167
    invoke-static {v0}, Landroid/media/MediaFile;->isRawImageFileType(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_a
    iget-boolean v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v0, :cond_12

    .line 1168
    move-object v10, v12

    .line 1170
    .local v10, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    iget-object v11, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-direct {v0, v11}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v0

    .line 1173
    goto :goto_5

    .line 1171
    :catch_0
    move-exception v0

    .line 1174
    :goto_5
    if-eqz v10, :cond_12

    .line 1175
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1176
    .local v0, "latlng":[F
    invoke-virtual {v10, v0}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1177
    const-string/jumbo v11, "latitude"

    aget v12, v0, v6

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1178
    const-string/jumbo v11, "longitude"

    aget v12, v0, v9

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1181
    :cond_b
    invoke-virtual {v10}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v11

    .line 1182
    .local v11, "time":J
    const-wide/16 v13, -0x1

    cmp-long v15, v11, v13

    if-eqz v15, :cond_c

    .line 1183
    const-string v6, "datetaken"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1195
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_6

    .line 1189
    :cond_c
    invoke-virtual {v10}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v11

    .line 1190
    cmp-long v6, v11, v13

    if-eqz v6, :cond_d

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    iget-wide v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    .line 1190
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "album":Ljava/lang/String;
    .restart local v16    # "title":Ljava/lang/String;
    .restart local v17    # "album":Ljava/lang/String;
    const-wide/16 v13, 0x3e8

    mul-long/2addr v4, v13

    sub-long/2addr v4, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v13, 0x5265c00

    cmp-long v4, v4, v13

    if-ltz v4, :cond_e

    .line 1191
    const-string v4, "datetaken"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_6

    .line 1195
    .end local v16    # "title":Ljava/lang/String;
    .end local v17    # "album":Ljava/lang/String;
    .restart local v4    # "title":Ljava/lang/String;
    .restart local v5    # "album":Ljava/lang/String;
    :cond_d
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .line 1195
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "album":Ljava/lang/String;
    .restart local v16    # "title":Ljava/lang/String;
    .restart local v17    # "album":Ljava/lang/String;
    :cond_e
    :goto_6
    const-string v4, "Orientation"

    const/4 v5, -0x1

    invoke-virtual {v10, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 1197
    .local v4, "orientation":I
    if-eq v4, v5, :cond_13

    .line 1200
    const/4 v5, 0x3

    if-eq v4, v5, :cond_11

    const/4 v5, 0x6

    if-eq v4, v5, :cond_10

    const/16 v5, 0x8

    if-eq v4, v5, :cond_f

    .line 1211
    const/4 v6, 0x0

    goto :goto_7

    .line 1208
    :cond_f
    const/16 v6, 0x10e

    .line 1209
    .local v6, "degree":I
    goto :goto_7

    .line 1202
    .end local v6    # "degree":I
    :cond_10
    const/16 v6, 0x5a

    .line 1203
    .restart local v6    # "degree":I
    goto :goto_7

    .line 1205
    .end local v6    # "degree":I
    :cond_11
    const/16 v6, 0xb4

    .line 1206
    .restart local v6    # "degree":I
    nop

    .line 1211
    :goto_7
    move v5, v6

    .line 1214
    .end local v6    # "degree":I
    .local v5, "degree":I
    const-string/jumbo v6, "orientation"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1214
    .end local v0    # "latlng":[F
    .end local v4    # "orientation":I
    .end local v5    # "degree":I
    .end local v10    # "exif":Landroid/media/ExifInterface;
    .end local v11    # "time":J
    goto :goto_8

    .line 1219
    .end local v16    # "title":Ljava/lang/String;
    .end local v17    # "album":Ljava/lang/String;
    .local v4, "title":Ljava/lang/String;
    .local v5, "album":Ljava/lang/String;
    :cond_12
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .line 1219
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "album":Ljava/lang/String;
    .restart local v16    # "title":Ljava/lang/String;
    .restart local v17    # "album":Ljava/lang/String;
    :cond_13
    :goto_8
    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    .line 1220
    .local v0, "tableUri":Landroid/net/Uri;
    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v4

    .line 1221
    .local v4, "inserter":Landroid/media/MediaInserter;
    iget-boolean v5, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-eqz v5, :cond_16

    iget-boolean v5, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v5, :cond_16

    .line 1222
    iget v5, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v5}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1223
    iget-object v5, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v5}, Landroid/media/MediaScanner;->access$2100(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_9

    .line 1224
    :cond_14
    iget v5, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v5}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1225
    iget-object v5, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v5}, Landroid/media/MediaScanner;->access$2200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_9

    .line 1226
    :cond_15
    iget v5, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v5}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1227
    iget-object v5, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v5}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    .line 1230
    :cond_16
    :goto_9
    const/4 v5, 0x0

    .line 1231
    .local v5, "result":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 1237
    .local v6, "needToSetSettings":Z
    const/4 v9, 0x0

    .line 1256
    .local v9, "needToSetMmsSettings":Z
    if-eqz p3, :cond_1a

    .line 1257
    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Z

    move-result v10

    if-nez v10, :cond_18

    .line 1258
    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_17

    iget-object v10, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 1259
    invoke-static {v11}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v10, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 1260
    :cond_17
    const/4 v6, 0x1

    .line 1261
    const/4 v9, 0x0

    .line 1265
    :cond_18
    const/4 v10, 0x1

    new-array v11, v10, [I

    const/4 v10, 0x0

    const/4 v12, 0x6

    aput v12, v11, v10

    invoke-static {v11}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v11

    if-eqz v11, :cond_1f

    iget-object v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Z

    move-result v11

    if-nez v11, :cond_1f

    .line 1266
    iget-object v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_19

    iget-object v11, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v12, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 1267
    invoke-static {v12}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v11, v12}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 1268
    :cond_19
    const/4 v6, 0x1

    .line 1269
    const/4 v9, 0x1

    goto :goto_c

    .line 1284
    :cond_1a
    const/4 v10, 0x0

    if-eqz p2, :cond_1d

    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->isDefaultRingtonesSet()Z

    move-result v11

    if-nez v11, :cond_1d

    .line 1285
    move v11, v10

    .line 1285
    .local v11, "i":I
    :goto_a
    invoke-static {}, Landroid/media/MediaScanner;->access$2600()I

    move-result v12

    if-ge v11, v12, :cond_1f

    .line 1287
    iget-object v12, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v12}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v11

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1c

    iget-object v12, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 1288
    invoke-static {v10}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v11

    invoke-direct {v1, v12, v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    goto :goto_b

    .line 1285
    :cond_1b
    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x0

    goto :goto_a

    .line 1289
    :cond_1c
    :goto_b
    const/4 v6, 0x1

    .line 1290
    goto :goto_c

    .line 1294
    .end local v11    # "i":I
    :cond_1d
    if-eqz p4, :cond_1f

    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;)Z

    move-result v10

    if-nez v10, :cond_1f

    .line 1295
    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1e

    iget-object v10, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 1296
    invoke-static {v11}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v10, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 1297
    :cond_1e
    const/4 v6, 0x1

    .line 1301
    :cond_1f
    :goto_c
    const-wide/16 v10, 0x0

    cmp-long v10, v7, v10

    if-nez v10, :cond_28

    .line 1302
    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)I

    move-result v10

    if-eqz v10, :cond_20

    .line 1303
    const-string/jumbo v10, "media_scanner_new_object_id"

    iget-object v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1305
    :cond_20
    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v10

    if-ne v0, v10, :cond_22

    .line 1306
    iget v10, v2, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    .line 1307
    .local v10, "format":I
    if-nez v10, :cond_21

    .line 1308
    iget-object v11, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v12, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 1310
    :cond_21
    const-string v11, "format"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1317
    .end local v10    # "format":I
    :cond_22
    if-eqz v4, :cond_25

    if-eqz v6, :cond_23

    goto :goto_d

    .line 1322
    :cond_23
    iget v10, v2, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    const/16 v11, 0x3001

    if-ne v10, v11, :cond_24

    .line 1323
    invoke-virtual {v4, v0, v3}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_e

    .line 1325
    :cond_24
    invoke-virtual {v4, v0, v3}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_e

    .line 1318
    :cond_25
    :goto_d
    if-eqz v4, :cond_26

    .line 1319
    invoke-virtual {v4}, Landroid/media/MediaInserter;->flushAll()V

    .line 1321
    :cond_26
    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Landroid/content/ContentProviderClient;

    move-result-object v10

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 1328
    :goto_e
    if-eqz v5, :cond_27

    .line 1329
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 1330
    iput-wide v7, v2, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 1356
    .end local v4    # "inserter":Landroid/media/MediaInserter;
    .local v19, "inserter":Landroid/media/MediaInserter;
    :cond_27
    move-object/from16 v19, v4

    goto :goto_11

    .line 1334
    .end local v19    # "inserter":Landroid/media/MediaInserter;
    .restart local v4    # "inserter":Landroid/media/MediaInserter;
    :cond_28
    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1337
    const-string v10, "_data"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1339
    const/4 v10, 0x0

    .line 1340
    .local v10, "mediaType":I
    iget-boolean v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-eqz v11, :cond_2d

    iget-object v11, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v11}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2d

    .line 1341
    iget-object v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v11}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v11

    .line 1342
    .local v11, "fileType":I
    invoke-static {v11}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v12

    if-eqz v12, :cond_29

    .line 1343
    const/4 v10, 0x2

    goto :goto_f

    .line 1344
    :cond_29
    invoke-static {v11}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v12

    if-eqz v12, :cond_2a

    .line 1345
    const/4 v10, 0x3

    goto :goto_f

    .line 1346
    :cond_2a
    invoke-static {v11}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v12

    if-eqz v12, :cond_2b

    .line 1347
    const/4 v10, 0x1

    goto :goto_f

    .line 1348
    :cond_2b
    invoke-static {v11}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v12

    if-eqz v12, :cond_2c

    .line 1349
    const/4 v10, 0x4

    .line 1351
    :cond_2c
    :goto_f
    const-string/jumbo v12, "media_type"

    move-object/from16 v19, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1351
    .end local v4    # "inserter":Landroid/media/MediaInserter;
    .restart local v19    # "inserter":Landroid/media/MediaInserter;
    invoke-virtual {v3, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1351
    .end local v11    # "fileType":I
    goto :goto_10

    .line 1353
    .end local v19    # "inserter":Landroid/media/MediaInserter;
    .restart local v4    # "inserter":Landroid/media/MediaInserter;
    :cond_2d
    move-object/from16 v19, v4

    .line 1353
    .end local v4    # "inserter":Landroid/media/MediaInserter;
    .restart local v19    # "inserter":Landroid/media/MediaInserter;
    :goto_10
    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Landroid/content/ContentProviderClient;

    move-result-object v4

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v3, v11, v11}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1356
    .end local v10    # "mediaType":I
    :goto_11
    if-eqz v6, :cond_33

    .line 1357
    if-eqz p3, :cond_2f

    .line 1368
    if-eqz v9, :cond_2e

    .line 1369
    const-string/jumbo v4, "mms_notification"

    invoke-direct {v1, v4, v0, v7, v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1370
    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v10, 0x1

    invoke-static {v4, v10}, Landroid/media/MediaScanner;->access$2402(Landroid/media/MediaScanner;Z)Z

    goto :goto_14

    .line 1372
    :cond_2e
    const/4 v10, 0x1

    const-string/jumbo v4, "notification_sound"

    invoke-direct {v1, v4, v0, v7, v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1373
    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4, v10}, Landroid/media/MediaScanner;->access$502(Landroid/media/MediaScanner;Z)Z

    goto :goto_14

    .line 1376
    :cond_2f
    if-eqz p2, :cond_32

    .line 1387
    const/16 v18, 0x0

    .line 1387
    .local v18, "i":I
    :goto_12
    move/from16 v4, v18

    .line 1387
    .end local v18    # "i":I
    .local v4, "i":I
    invoke-static {}, Landroid/media/MediaScanner;->access$2600()I

    move-result v10

    if-ge v4, v10, :cond_33

    .line 1388
    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$2800(Landroid/media/MediaScanner;)[Z

    move-result-object v10

    aget-boolean v10, v10, v4

    if-eqz v10, :cond_30

    .line 1389
    goto :goto_13

    .line 1392
    :cond_30
    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_31

    iget-object v10, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 1393
    invoke-static {v11}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-direct {v1, v10, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_31

    .line 1394
    goto :goto_13

    .line 1398
    :cond_31
    invoke-static {}, Landroid/media/MediaScanner;->access$2900()[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-direct {v1, v10, v0, v7, v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1399
    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$2800(Landroid/media/MediaScanner;)[Z

    move-result-object v10

    const/4 v11, 0x1

    aput-boolean v11, v10, v4

    .line 1387
    :goto_13
    add-int/lit8 v18, v4, 0x1

    .line 1387
    .end local v4    # "i":I
    .restart local v18    # "i":I
    goto :goto_12

    .line 1402
    .end local v18    # "i":I
    :cond_32
    if-eqz p4, :cond_33

    .line 1403
    const-string v4, "alarm_alert"

    invoke-direct {v1, v4, v0, v7, v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1404
    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v10, 0x1

    invoke-static {v4, v10}, Landroid/media/MediaScanner;->access$802(Landroid/media/MediaScanner;Z)Z

    .line 1408
    :cond_33
    :goto_14
    return-object v5
.end method

.method private getFileTypeFromDrm(Ljava/lang/String;)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 1463
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$100(Landroid/media/MediaScanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1464
    const/4 v0, 0x0

    return v0

    .line 1467
    :cond_0
    const/4 v0, 0x0

    .line 1469
    .local v0, "resultFileType":I
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1470
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    new-instance v2, Landroid/drm/DrmManagerClient;

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v3}, Landroid/media/MediaScanner;->access$3100(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/media/MediaScanner;->access$3302(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;

    .line 1473
    :cond_1
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1474
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 1475
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1476
    .local v1, "drmMimetype":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1477
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1478
    invoke-static {v1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 1481
    .end local v1    # "drmMimetype":Ljava/lang/String;
    :cond_2
    return v0
.end method

.method private isDefaultRingtonesSet()Z
    .locals 5

    .line 1417
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$2800(Landroid/media/MediaScanner;)[Z

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-boolean v4, v0, v3

    .line 1418
    .local v4, "defaultSet":Z
    if-nez v4, :cond_0

    .line 1419
    return v2

    .line 1417
    .end local v4    # "defaultSet":Z
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1422
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private parseDate(Ljava/lang/String;)J
    .locals 3
    .param p1, "date"    # Ljava/lang/String;

    .line 866
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 867
    :catch_0
    move-exception v0

    .line 868
    .local v0, "e":Ljava/text/ParseException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "defaultValue"    # I

    .line 873
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 874
    .local v0, "length":I
    if-ne p2, v0, :cond_0

    return p3

    .line 876
    :cond_0
    add-int/lit8 v1, p2, 0x1

    .local v1, "start":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 878
    .local p2, "ch":C
    const/16 v2, 0x30

    if-lt p2, v2, :cond_5

    const/16 v3, 0x39

    if-le p2, v3, :cond_1

    goto :goto_2

    .line 880
    :cond_1
    add-int/lit8 v4, p2, -0x30

    .line 881
    .local v4, "result":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 882
    add-int/lit8 v5, v1, 0x1

    .local v5, "start":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 883
    .end local v1    # "start":I
    if-lt p2, v2, :cond_3

    if-le p2, v3, :cond_2

    goto :goto_1

    .line 884
    :cond_2
    mul-int/lit8 v1, v4, 0xa

    add-int/lit8 v6, p2, -0x30

    add-int v4, v1, v6

    .line 880
    move v1, v5

    goto :goto_0

    .line 883
    :cond_3
    :goto_1
    return v4

    .line 887
    .end local v5    # "start":I
    .restart local v1    # "start":I
    :cond_4
    return v4

    .line 878
    .end local v4    # "result":I
    :cond_5
    :goto_2
    return p3
.end method

.method private processImageFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 1022
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1023
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1024
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1025
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 1026
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    .line 1027
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 1028
    :catch_0
    move-exception v1

    .line 1031
    return v0
.end method

.method private setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 6
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "rowId"    # J

    .line 1446
    invoke-static {}, Landroid/media/MediaScanner;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRingtoneIfNotSet: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0, p1}, Landroid/media/MediaScanner;->access$3000(Landroid/media/MediaScanner;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1448
    return-void

    .line 1451
    :cond_1
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$3100(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1452
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1453
    .local v1, "existingSettingValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1454
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1455
    .local v2, "settingUri":Landroid/net/Uri;
    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1456
    .local v3, "ringtoneUri":Landroid/net/Uri;
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$3100(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    .line 1457
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v5

    .line 1456
    invoke-static {v4, v5, v3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1459
    .end local v2    # "settingUri":Landroid/net/Uri;
    .end local v3    # "ringtoneUri":Landroid/net/Uri;
    :cond_2
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2, p1}, Landroid/media/MediaScanner;->access$3200(Landroid/media/MediaScanner;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1460
    return-void
.end method

.method private testGenreNameConverter()V
    .locals 2

    .line 950
    const-string v0, "2"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 951
    const-string v0, "(2)"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 952
    const-string v0, "(2"

    const-string v1, "(2"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 953
    const-string v0, "2 Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 954
    const-string v0, "(2) Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 955
    const-string v0, "(2 Foo"

    const-string v1, "(2 Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 956
    const-string v0, "2Foo"

    const-string v1, "2Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 957
    const-string v0, "(2)Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 958
    const-string v0, "200 Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 959
    const-string v0, "(200) Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 960
    const-string v0, "200Foo"

    const-string v1, "200Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 961
    const-string v0, "(200)Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 962
    const-string v0, "200)Foo"

    const-string v1, "200)Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 963
    const-string v0, "200) Foo"

    const-string v1, "200) Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 964
    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 7

    .line 1053
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1055
    .local v0, "map":Landroid/content/ContentValues;
    const-string v1, "_data"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const-string/jumbo v1, "title"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string v1, "date_modified"

    iget-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1058
    const-string v1, "_size"

    iget-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1061
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1062
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1063
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1064
    const-string v2, "MediaScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reset mimetype("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") to null for directory"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/media/MediaScanner;->access$1400()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "."

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1069
    :cond_1
    const-string/jumbo v2, "mime_type"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    const-string/jumbo v2, "is_drm"

    iget-boolean v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1072
    const/4 v2, 0x0

    .line 1073
    .local v2, "resolution":Ljava/lang/String;
    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v4, :cond_2

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v4, :cond_2

    .line 1074
    const-string/jumbo v4, "width"

    iget v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1075
    const-string v4, "height"

    iget v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1076
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1079
    :cond_2
    iget-boolean v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v4, :cond_d

    .line 1080
    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1081
    const-string v3, "artist"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 1082
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v4, "<unknown>"

    .line 1081
    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    const-string v3, "album"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 1084
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v4, "<unknown>"

    .line 1083
    :goto_2
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const-string v3, "duration"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1086
    if-eqz v2, :cond_5

    .line 1087
    const-string/jumbo v3, "resolution"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    :cond_5
    iget-wide v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_c

    .line 1090
    const-string v3, "datetaken"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_5

    .line 1092
    :cond_6
    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_5

    .line 1094
    :cond_7
    iget-boolean v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-eqz v4, :cond_c

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1095
    const-string v4, "artist"

    iget-object v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 1096
    iget-object v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_3

    :cond_8
    const-string v5, "<unknown>"

    .line 1095
    :goto_3
    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    const-string v4, "album_artist"

    iget-object v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 1098
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    nop

    .line 1097
    :cond_9
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    const-string v3, "album"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    .line 1100
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_4

    :cond_a
    const-string v4, "<unknown>"

    .line 1099
    :goto_4
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    const-string v3, "composer"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    const-string v3, "genre"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v3, :cond_b

    .line 1104
    const-string/jumbo v3, "year"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1106
    :cond_b
    const-string/jumbo v3, "track"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1107
    const-string v3, "duration"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1108
    const-string v3, "compilation"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1110
    :cond_c
    :goto_5
    iget-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-nez v3, :cond_d

    .line 1112
    const-string/jumbo v3, "media_type"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1115
    :cond_d
    return-object v0
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;
    .locals 23
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "lastModified"    # J
    .param p5, "fileSize"    # J
    .param p7, "isDirectory"    # Z
    .param p8, "noMedia"    # Z

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    .line 664
    iput-object v9, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 665
    const/4 v12, 0x0

    iput v12, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 666
    move-wide/from16 v13, p5

    iput-wide v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    .line 667
    iput-boolean v12, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 668
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    .line 670
    if-nez p7, :cond_4

    .line 671
    if-nez p8, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->access$000(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 672
    const/4 v1, 0x1

    .end local p8    # "noMedia":Z
    .local v1, "noMedia":Z
    goto :goto_0

    .line 674
    .end local v1    # "noMedia":Z
    .restart local p8    # "noMedia":Z
    :cond_0
    move/from16 v1, p8

    .end local p8    # "noMedia":Z
    .restart local v1    # "noMedia":Z
    :goto_0
    iput-boolean v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    .line 677
    if-eqz v9, :cond_1

    .line 678
    invoke-static/range {p2 .. p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 682
    :cond_1
    iget v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-nez v2, :cond_2

    .line 683
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v2

    .line 684
    .local v2, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-eqz v2, :cond_2

    .line 685
    iget v3, v2, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iput v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 686
    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 687
    iget-object v3, v2, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    iput-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 692
    .end local v2    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_2
    iget-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->access$100(Landroid/media/MediaScanner;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 693
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 697
    :cond_3
    move v15, v1

    goto :goto_1

    .end local v1    # "noMedia":Z
    .restart local p8    # "noMedia":Z
    :cond_4
    move/from16 v15, p8

    .end local p8    # "noMedia":Z
    .local v15, "noMedia":Z
    :goto_1
    iget-object v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-virtual {v1, v8}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v5

    .line 699
    .local v5, "entry":Landroid/media/MediaScanner$FileEntry;
    if-eqz v5, :cond_5

    iget-wide v2, v5, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    sub-long v2, v10, v2

    goto :goto_2

    :cond_5
    const-wide/16 v2, 0x0

    :goto_2
    move-wide/from16 v17, v2

    .line 700
    .local v17, "delta":J
    const-wide/16 v1, 0x1

    cmp-long v1, v17, v1

    if-gtz v1, :cond_7

    const-wide/16 v1, -0x1

    cmp-long v1, v17, v1

    if-gez v1, :cond_6

    goto :goto_3

    :cond_6
    move v1, v12

    goto :goto_4

    :cond_7
    :goto_3
    move v1, v7

    :goto_4
    move/from16 v19, v1

    .line 701
    .local v19, "wasModified":Z
    if-eqz v5, :cond_8

    if-eqz v19, :cond_b

    .line 702
    :cond_8
    if-eqz v19, :cond_9

    .line 703
    iput-wide v10, v5, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    .line 708
    move v12, v7

    goto :goto_6

    .line 705
    :cond_9
    new-instance v20, Landroid/media/MediaScanner$FileEntry;

    const-wide/16 v2, 0x0

    .line 706
    if-eqz p7, :cond_a

    const/16 v1, 0x3001

    move/from16 v21, v1

    goto :goto_5

    :cond_a
    move/from16 v21, v12

    :goto_5
    move-object/from16 v1, v20

    move-object v4, v8

    move-object/from16 v16, v5

    move-wide v5, v10

    .end local v5    # "entry":Landroid/media/MediaScanner$FileEntry;
    .local v16, "entry":Landroid/media/MediaScanner$FileEntry;
    move v12, v7

    move/from16 v7, v21

    invoke-direct/range {v1 .. v7}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .line 708
    .end local v16    # "entry":Landroid/media/MediaScanner$FileEntry;
    .local v1, "entry":Landroid/media/MediaScanner$FileEntry;
    move-object v5, v1

    .end local v1    # "entry":Landroid/media/MediaScanner$FileEntry;
    .restart local v5    # "entry":Landroid/media/MediaScanner$FileEntry;
    :goto_6
    iput-boolean v12, v5, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    .line 711
    :cond_b
    iget-object v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    iget v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v1}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 712
    iget-object v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$300(Landroid/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    return-object v2

    .line 718
    :cond_c
    iput-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 719
    iput-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 720
    iput-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 721
    iput-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 722
    iput-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 723
    iput-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 724
    const/4 v1, 0x0

    iput v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 725
    iput v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    .line 726
    iput v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    .line 727
    iput-object v8, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 728
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:J

    .line 729
    iput-wide v10, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    .line 730
    iput-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    .line 731
    iput v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    .line 732
    iput v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 733
    iput v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    .line 735
    return-object v5
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .locals 23
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "lastModified"    # J
    .param p5, "fileSize"    # J
    .param p7, "isDirectory"    # Z
    .param p8, "scanAlways"    # Z
    .param p9, "noMedia"    # Z

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 754
    const/4 v0, 0x0

    move-object v12, v0

    .line 760
    .local v12, "result":Landroid/net/Uri;
    const-wide/16 v13, 0x0

    if-nez p7, :cond_0

    .line 762
    cmp-long v3, p5, v13

    if-nez v3, :cond_0

    .line 763
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 764
    .local v3, "readSize":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 765
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v4

    .line 771
    .end local v3    # "readSize":Ljava/io/File;
    .end local p5    # "fileSize":J
    .local v1, "fileSize":J
    move-wide v15, v1

    goto :goto_0

    .line 856
    .end local v1    # "fileSize":J
    .restart local p5    # "fileSize":J
    :catch_0
    move-exception v0

    move-wide/from16 v15, p5

    goto/16 :goto_c

    .line 771
    :cond_0
    move-wide/from16 v15, p5

    .line 771
    .end local p5    # "fileSize":J
    .local v15, "fileSize":J
    :goto_0
    move-object v1, v10

    move-object v2, v11

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide v6, v15

    move/from16 v8, p7

    move/from16 v9, p9

    :try_start_1
    invoke-virtual/range {v1 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;

    move-result-object v1

    move-object v8, v1

    .line 774
    .local v8, "entry":Landroid/media/MediaScanner$FileEntry;
    if-nez v8, :cond_1

    .line 775
    return-object v0

    .line 781
    :cond_1
    iget-object v0, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 782
    iput-wide v13, v8, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 785
    :cond_2
    iget-object v0, v8, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 786
    iget-object v0, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v8, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 787
    invoke-static {v1}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 795
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->isDefaultRingtonesSet()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v8, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 796
    invoke-static {v1}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesRingtonesPathHaveFilename(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 798
    invoke-static {v0}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v8, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 799
    invoke-static {v1}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 800
    :cond_5
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forcing rescan of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "since ringtone setting didn\'t finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/4 v0, 0x1

    .line 815
    .end local p8    # "scanAlways":Z
    .local v0, "scanAlways":Z
    .local v1, "scanAlways":Z
    :goto_1
    move v1, v0

    goto :goto_2

    .line 803
    .end local v0    # "scanAlways":Z
    .end local v1    # "scanAlways":Z
    .restart local p8    # "scanAlways":Z
    :cond_6
    iget-object v0, v8, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$1000(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 804
    invoke-static {}, Landroid/media/MediaScanner;->access$1100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 807
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forcing rescan of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " since build fingerprint changed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 809
    const/4 v0, 0x1

    goto :goto_1

    .line 815
    :cond_7
    move/from16 v1, p8

    .line 815
    .end local p8    # "scanAlways":Z
    .restart local v1    # "scanAlways":Z
    :goto_2
    :try_start_2
    iget-object v0, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v8, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, v8, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {}, Landroid/media/MediaScanner;->access$1300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 816
    invoke-static {}, Landroid/media/MediaScanner;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Forcing rescan of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to confirm media_type definition."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 817
    :cond_8
    const/4 v0, 0x1

    .line 822
    .end local v1    # "scanAlways":Z
    .restart local v0    # "scanAlways":Z
    move v9, v0

    goto :goto_3

    .line 822
    .end local v0    # "scanAlways":Z
    .restart local v1    # "scanAlways":Z
    :cond_9
    move v9, v1

    .line 822
    .end local v1    # "scanAlways":Z
    .local v9, "scanAlways":Z
    :goto_3
    if-eqz v8, :cond_17

    :try_start_3
    iget-boolean v0, v8, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-nez v0, :cond_a

    if-eqz v9, :cond_17

    .line 823
    :cond_a
    if-eqz p9, :cond_b

    .line 824
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v10

    move-object v2, v8

    invoke-direct/range {v1 .. v7}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v0

    move-object v12, v0

    goto/16 :goto_b

    .line 826
    :cond_b
    iget v0, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    .line 827
    .local v0, "isaudio":Z
    iget v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v1}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v1

    move v14, v1

    .line 828
    .local v14, "isvideo":Z
    iget v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v1}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v1

    move/from16 v17, v1

    .line 830
    .local v17, "isimage":Z
    if-nez v0, :cond_c

    if-nez v14, :cond_c

    if-eqz v17, :cond_d

    .line 831
    :cond_c
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/Environment;->maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 832
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 836
    .end local p1    # "path":Ljava/lang/String;
    .local v1, "path":Ljava/lang/String;
    move-object v11, v1

    .line 836
    .end local v1    # "path":Ljava/lang/String;
    .local v11, "path":Ljava/lang/String;
    :cond_d
    if-nez v0, :cond_f

    if-eqz v14, :cond_e

    goto :goto_4

    .line 840
    :cond_e
    move-object/from16 v7, p2

    goto :goto_5

    .line 837
    :cond_f
    :goto_4
    iget-object v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v7, p2

    invoke-static {v1, v11, v7, v10}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)Z

    move-result v1

    iput-boolean v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    .line 840
    :goto_5
    if-eqz v17, :cond_10

    .line 841
    invoke-direct {v10, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    .line 844
    :cond_10
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 845
    .local v5, "lowpath":Ljava/lang/String;
    iget-boolean v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_11

    const-string v1, "/ringtones/"

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_11

    move v1, v3

    goto :goto_6

    :cond_11
    move v1, v2

    :goto_6
    move/from16 v18, v1

    .line 846
    .local v18, "ringtones":Z
    iget-boolean v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-eqz v1, :cond_12

    const-string v1, "/notifications/"

    .line 847
    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_12

    move v1, v3

    goto :goto_7

    :cond_12
    move v1, v2

    :goto_7
    move/from16 v19, v1

    .line 848
    .local v19, "notifications":Z
    iget-boolean v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-eqz v1, :cond_13

    const-string v1, "/alarms/"

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_13

    move v1, v3

    goto :goto_8

    :cond_13
    move v1, v2

    :goto_8
    move/from16 v20, v1

    .line 849
    .local v20, "alarms":Z
    iget-boolean v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-eqz v1, :cond_14

    const-string v1, "/podcasts/"

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_14

    move v1, v3

    goto :goto_9

    :cond_14
    move v1, v2

    :goto_9
    move/from16 v21, v1

    .line 850
    .local v21, "podcasts":Z
    iget-boolean v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-eqz v1, :cond_16

    const-string v1, "/music/"

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_15

    if-nez v18, :cond_16

    if-nez v19, :cond_16

    if-nez v20, :cond_16

    if-nez v21, :cond_16

    :cond_15
    move v6, v3

    goto :goto_a

    :cond_16
    move v6, v2

    .line 853
    .local v6, "music":Z
    :goto_a
    move-object v1, v10

    move-object v2, v8

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v22, v5

    move/from16 v5, v20

    .line 853
    .end local v5    # "lowpath":Ljava/lang/String;
    .local v22, "lowpath":Ljava/lang/String;
    move/from16 v7, v21

    invoke-direct/range {v1 .. v7}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v12, v1

    .line 853
    .end local v0    # "isaudio":Z
    .end local v6    # "music":Z
    .end local v8    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v14    # "isvideo":Z
    .end local v17    # "isimage":Z
    .end local v18    # "ringtones":Z
    .end local v19    # "notifications":Z
    .end local v20    # "alarms":Z
    .end local v21    # "podcasts":Z
    .end local v22    # "lowpath":Ljava/lang/String;
    goto :goto_b

    .line 856
    .end local v11    # "path":Ljava/lang/String;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_d

    .line 858
    .end local p1    # "path":Ljava/lang/String;
    .restart local v11    # "path":Ljava/lang/String;
    :cond_17
    :goto_b
    goto :goto_e

    .line 856
    .end local v9    # "scanAlways":Z
    .end local v11    # "path":Ljava/lang/String;
    .local v1, "scanAlways":Z
    .restart local p1    # "path":Ljava/lang/String;
    :catch_2
    move-exception v0

    move v9, v1

    goto :goto_d

    .line 856
    .end local v1    # "scanAlways":Z
    .restart local p8    # "scanAlways":Z
    :catch_3
    move-exception v0

    .line 856
    .end local p1    # "path":Ljava/lang/String;
    .end local p8    # "scanAlways":Z
    .restart local v9    # "scanAlways":Z
    .restart local v11    # "path":Ljava/lang/String;
    :goto_c
    move/from16 v9, p8

    .line 857
    .local v0, "e":Landroid/os/RemoteException;
    :goto_d
    const-string v1, "MediaScanner"

    const-string v2, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 861
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-object v12
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "genreTagValue"    # Ljava/lang/String;

    .line 968
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 969
    return-object v0

    .line 971
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 973
    .local v1, "length":I
    if-lez v1, :cond_c

    .line 974
    const/4 v2, 0x0

    .line 975
    .local v2, "parenthesized":Z
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 976
    .local v3, "number":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 977
    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 978
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 979
    .local v5, "c":C
    if-nez v4, :cond_1

    const/16 v6, 0x28

    if-ne v5, v6, :cond_1

    .line 980
    const/4 v2, 0x1

    goto :goto_1

    .line 981
    :cond_1
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 982
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 977
    .end local v5    # "c":C
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 987
    :cond_2
    if-ge v4, v1, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_2

    :cond_3
    const/16 v5, 0x20

    .line 988
    .local v5, "charAfterNumber":C
    :goto_2
    const/16 v6, 0x29

    if-eqz v2, :cond_4

    if-eq v5, v6, :cond_5

    :cond_4
    if-nez v2, :cond_c

    .line 989
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 991
    :cond_5
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v7

    .line 992
    .local v7, "genreIndex":S
    if-ltz v7, :cond_b

    .line 993
    invoke-static {}, Landroid/media/MediaScanner;->access$1700()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_6

    invoke-static {}, Landroid/media/MediaScanner;->access$1700()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v7

    if-eqz v8, :cond_6

    .line 994
    invoke-static {}, Landroid/media/MediaScanner;->access$1700()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v7

    return-object v0

    .line 995
    :cond_6
    const/16 v8, 0xff

    if-ne v7, v8, :cond_7

    .line 996
    return-object v0

    .line 997
    :cond_7
    if-ge v7, v8, :cond_a

    add-int/lit8 v0, v4, 0x1

    if-ge v0, v1, :cond_a

    .line 1000
    if-eqz v2, :cond_8

    if-ne v5, v6, :cond_8

    .line 1001
    add-int/lit8 v4, v4, 0x1

    .line 1003
    :cond_8
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1004
    .local v0, "ret":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    .line 1005
    return-object v0

    .line 1007
    .end local v0    # "ret":Ljava/lang/String;
    :cond_9
    goto :goto_3

    .line 1009
    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1013
    .end local v7    # "genreIndex":S
    :cond_b
    :goto_3
    goto :goto_4

    .line 1012
    :catch_0
    move-exception v0

    .line 1017
    .end local v2    # "parenthesized":Z
    .end local v3    # "number":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    .end local v5    # "charAfterNumber":C
    :cond_c
    :goto_4
    return-object p1
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 891
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "title;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    .line 896
    :cond_0
    const-string v0, "artist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "artist;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_7

    .line 898
    :cond_1
    const-string v0, "albumartist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "albumartist;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "band"

    .line 899
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "band;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_6

    .line 901
    :cond_2
    const-string v0, "album"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "album;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_5

    .line 903
    :cond_3
    const-string v0, "composer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "composer;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_4

    .line 905
    :cond_4
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "genre"

    .line 906
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "genre;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 907
    :cond_5
    invoke-virtual {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_9

    .line 908
    :cond_6
    const-string/jumbo v0, "year"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    const-string/jumbo v0, "year;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_3

    .line 910
    :cond_7
    const-string/jumbo v0, "tracknumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "tracknumber;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_2

    .line 915
    :cond_8
    const-string v0, "discnumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "set"

    .line 916
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "set;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_1

    .line 921
    :cond_9
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 922
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_9

    .line 923
    :cond_a
    const-string/jumbo v0, "writer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "writer;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_0

    .line 925
    :cond_b
    const-string v0, "compilation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 926
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_9

    .line 927
    :cond_c
    const-string/jumbo v0, "isdrm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 928
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    move v1, v2

    nop

    :cond_d
    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    goto/16 :goto_9

    .line 929
    :cond_e
    const-string v0, "date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 930
    invoke-direct {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:J

    goto :goto_9

    .line 931
    :cond_f
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 932
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    goto :goto_9

    .line 933
    :cond_10
    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 934
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto :goto_9

    .line 924
    :cond_11
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto :goto_9

    .line 919
    :cond_12
    :goto_1
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 920
    .local v0, "num":I
    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 921
    .end local v0    # "num":I
    goto :goto_9

    .line 913
    :cond_13
    :goto_2
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 914
    .restart local v0    # "num":I
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v0

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 915
    .end local v0    # "num":I
    goto :goto_9

    .line 909
    :cond_14
    :goto_3
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    goto :goto_9

    .line 904
    :cond_15
    :goto_4
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_9

    .line 902
    :cond_16
    :goto_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_9

    .line 900
    :cond_17
    :goto_6
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_9

    .line 897
    :cond_18
    :goto_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_9

    .line 895
    :cond_19
    :goto_8
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 938
    :cond_1a
    :goto_9
    return-void
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "lastModified"    # J
    .param p4, "fileSize"    # J
    .param p6, "isDirectory"    # Z
    .param p7, "noMedia"    # Z

    .line 745
    invoke-static {p1}, Landroid/media/MediaScanner;->isProtectedMediaPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    const/4 v0, 0x0

    .end local p7    # "noMedia":Z
    .local v0, "noMedia":Z
    goto :goto_0

    .line 749
    .end local v0    # "noMedia":Z
    .restart local p7    # "noMedia":Z
    :cond_0
    move/from16 v0, p7

    .end local p7    # "noMedia":Z
    .restart local v0    # "noMedia":Z
    :goto_0
    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move v10, v0

    invoke-virtual/range {v1 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    .line 750
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 1035
    const-string v0, "audio/mp4"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "video"

    .line 1036
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    return-void

    .line 1042
    :cond_0
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1043
    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 1044
    return-void
.end method
