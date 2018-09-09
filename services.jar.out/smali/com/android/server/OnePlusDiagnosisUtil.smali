.class public Lcom/android/server/OnePlusDiagnosisUtil;
.super Ljava/lang/Object;
.source "OnePlusDiagnosisUtil.java"


# static fields
.field private static DEBUG_ONEPLUS:Z = false

.field public static final STANDBY_DIAGNOSIS_FOLDER:Ljava/lang/String; = "/data/system/power"

.field public static final TAG:Ljava/lang/String; = "OnePlusDiagnosisUtil"


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private final mLog:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxLines:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OnePlusDiagnosisUtil;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "maxLines"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mMaxLines:I

    .line 50
    new-instance v0, Ljava/util/ArrayDeque;

    iget v1, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mMaxLines:I

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mLog:Ljava/util/Deque;

    .line 52
    iput-object p1, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mFilePath:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "f":Ljava/io/File;
    const/4 v1, 0x0

    move-object v2, v1

    .line 57
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 61
    nop

    .line 62
    .local v1, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    if-eqz v3, :cond_0

    .line 63
    invoke-direct {p0, v1}, Lcom/android/server/OnePlusDiagnosisUtil;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v1    # "line":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 66
    :cond_1
    sget-boolean v1, Lcom/android/server/OnePlusDiagnosisUtil;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    const-string v1, "OnePlusDiagnosisUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t existed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 74
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 75
    :catch_0
    move-exception v1

    .line 77
    goto :goto_3

    .line 76
    :cond_3
    :goto_2
    goto :goto_3

    .line 72
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 68
    :catch_1
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    const-string v3, "OnePlusDiagnosisUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got exception :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_3

    .line 74
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 78
    :goto_3
    return-void

    .line 72
    :goto_4
    nop

    .line 73
    if-eqz v2, :cond_4

    .line 74
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 75
    :catch_2
    move-exception v3

    nop

    .line 76
    :cond_4
    :goto_5
    throw v1
.end method

.method private declared-synchronized append(Ljava/lang/String;)V
    .locals 2
    .param p1, "logLine"    # Ljava/lang/String;

    monitor-enter p0

    .line 135
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mMaxLines:I

    if-lt v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mLog:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    .line 134
    .end local p1    # "logLine":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/OnePlusDiagnosisUtil;
    throw p1
.end method


# virtual methods
.method public declared-synchronized deleteFile()V
    .locals 2

    monitor-enter p0

    .line 176
    const/4 v0, 0x0

    .line 178
    .local v0, "f":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 181
    iget-object v1, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mLog:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_0
    goto :goto_0

    .line 175
    .end local v0    # "f":Ljava/io/File;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/OnePlusDiagnosisUtil;
    throw v0

    .line 183
    .restart local v0    # "f":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/OnePlusDiagnosisUtil;
    :catch_0
    move-exception v1

    .line 185
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized dumpRecords()V
    .locals 4

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 142
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    sget-boolean v1, Lcom/android/server/OnePlusDiagnosisUtil;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string v1, "OnePlusDiagnosisUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 145
    :cond_1
    monitor-exit p0

    return-void

    .line 140
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/OnePlusDiagnosisUtil;
    throw v0
.end method

.method public declared-synchronized flushToFile()V
    .locals 7

    monitor-enter p0

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "theDir":Ljava/io/File;
    const/4 v1, 0x0

    .line 149
    .local v1, "fw":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 151
    .local v2, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/power"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 155
    :cond_0
    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 156
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v3

    .line 157
    iget-object v3, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mLog:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 158
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 159
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 167
    .end local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    nop

    .line 168
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    .line 171
    :catch_0
    move-exception v3

    goto :goto_2

    .line 169
    :goto_1
    nop

    .line 170
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 171
    :goto_2
    nop

    .line 173
    goto :goto_4

    .line 172
    :cond_2
    :goto_3
    goto :goto_4

    .line 166
    :catchall_0
    move-exception v3

    goto :goto_5

    .line 162
    :catch_1
    move-exception v3

    .line 163
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    const-string v4, "OnePlusDiagnosisUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_3

    .line 168
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 169
    :cond_3
    if-eqz v1, :cond_2

    .line 170
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 174
    :goto_4
    monitor-exit p0

    return-void

    .line 166
    :goto_5
    nop

    .line 167
    if-eqz v2, :cond_4

    .line 168
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    goto :goto_6

    .line 146
    .end local v0    # "theDir":Ljava/io/File;
    .end local v1    # "fw":Ljava/io/FileWriter;
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v0

    goto :goto_9

    .line 171
    .restart local v0    # "theDir":Ljava/io/File;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    :catch_2
    move-exception v4

    goto :goto_7

    .line 169
    :cond_4
    :goto_6
    if-eqz v1, :cond_5

    .line 170
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_8

    .line 171
    :goto_7
    nop

    .line 172
    :cond_5
    :goto_8
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 146
    .end local v0    # "theDir":Ljava/io/File;
    .end local v1    # "fw":Ljava/io/FileWriter;
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    :goto_9
    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/OnePlusDiagnosisUtil;
    throw v0
.end method

.method public log(IJIFLjava/lang/String;)V
    .locals 17
    .param p1, "fault_type"    # I
    .param p2, "standbyMs"    # J
    .param p4, "batteryDrop"    # I
    .param p5, "mA"    # F
    .param p6, "msg"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    .line 111
    iget v3, v0, Lcom/android/server/OnePlusDiagnosisUtil;->mMaxLines:I

    if-gtz v3, :cond_0

    .line 112
    return-void

    .line 114
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 115
    .local v3, "calendarNow":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 117
    .local v4, "calendarBegin":Ljava/util/Calendar;
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 119
    .local v5, "utcNow":J
    long-to-float v7, v1

    const v8, 0x4a5bba00    # 3600000.0f

    div-float/2addr v7, v8

    .line 121
    .local v7, "standbyHrs":F
    sub-long v8, v5, v1

    invoke-virtual {v4, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 123
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    .line 124
    .local v8, "tz":Ljava/util/TimeZone;
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string/jumbo v10, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 125
    .local v9, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 127
    const-string v10, "%d,%d,%d,%.3f,%d,%.2f,%s,%s,%s"

    const/16 v11, 0x9

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    sub-long v13, v5, v1

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    .line 128
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    div-long v13, v5, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    .line 129
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    .line 130
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x5

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x6

    aput-object p6, v11, v12

    const/4 v12, 0x7

    .line 131
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v12

    const/16 v12, 0x8

    .line 132
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v12

    .line 127
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/OnePlusDiagnosisUtil;->append(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public log(ILjava/lang/String;)V
    .locals 10
    .param p1, "fault_type"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 86
    iget v0, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mMaxLines:I

    if-gtz v0, :cond_0

    .line 87
    return-void

    .line 89
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 90
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 91
    .local v1, "utc":J
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 92
    .local v3, "tz":Ljava/util/TimeZone;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 93
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 94
    const-string v5, "%d,%d,%s,%s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/16 v8, 0x3e8

    div-long v8, v1, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/OnePlusDiagnosisUtil;->append(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "fault_type"    # I
    .param p2, "msg1"    # Ljava/lang/String;
    .param p3, "msg2"    # Ljava/lang/String;

    .line 97
    iget v0, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mMaxLines:I

    if-gtz v0, :cond_0

    .line 98
    return-void

    .line 100
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 101
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 102
    .local v1, "utc":J
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 103
    .local v3, "tz":Ljava/util/TimeZone;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 104
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 105
    const-string v5, "%d,%d,%s,%s,%s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/16 v8, 0x3e8

    div-long v8, v1, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    const/4 v7, 0x3

    .line 107
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    aput-object p3, v6, v7

    .line 105
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/OnePlusDiagnosisUtil;->append(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 80
    iget v0, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mMaxLines:I

    if-gtz v0, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/OnePlusDiagnosisUtil;->append(Ljava/lang/String;)V

    .line 84
    return-void
.end method
