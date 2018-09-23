.class public Lcom/android/server/secrecy/policy/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static DEBUG:Z = false

.field private static ERROR:Z = false

.field private static FILE_LOG_LEVEL:I = 0x0

.field private static INFO:Z = false

.field private static final IS_DEBUGING:Z

.field private static LOGCAT_LEVEL:I = 0x0

.field static final LOG_LEVEL_DEBUG:I = 0x2

.field static final LOG_LEVEL_ERROR:I = 0x10

.field static final LOG_LEVEL_INFO:I = 0x4

.field static final LOG_LEVEL_VERBOSE:I = 0x0

.field static final LOG_LEVEL_WARN:I = 0x8

.field private static final LOG_TAG_STRING:Ljava/lang/String; = "SecrecyService.LogUtil"

.field private static VERBOSE:Z

.field private static WARN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-boolean v0, Lcom/android/server/secrecy/SecrecyService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/secrecy/policy/util/LogUtil;->IS_DEBUGING:Z

    sget-boolean v0, Lcom/android/server/secrecy/policy/util/LogUtil;->IS_DEBUGING:Z

    const/16 v1, 0x10

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput v0, Lcom/android/server/secrecy/policy/util/LogUtil;->LOGCAT_LEVEL:I

    sget-boolean v0, Lcom/android/server/secrecy/policy/util/LogUtil;->IS_DEBUGING:Z

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    sput v0, Lcom/android/server/secrecy/policy/util/LogUtil;->FILE_LOG_LEVEL:I

    sget v0, Lcom/android/server/secrecy/policy/util/LogUtil;->LOGCAT_LEVEL:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v0, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    sput-boolean v0, Lcom/android/server/secrecy/policy/util/LogUtil;->VERBOSE:Z

    sget v0, Lcom/android/server/secrecy/policy/util/LogUtil;->LOGCAT_LEVEL:I

    if-gt v0, v2, :cond_3

    move v0, v4

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    sput-boolean v0, Lcom/android/server/secrecy/policy/util/LogUtil;->DEBUG:Z

    sget v0, Lcom/android/server/secrecy/policy/util/LogUtil;->LOGCAT_LEVEL:I

    const/4 v2, 0x4

    if-gt v0, v2, :cond_4

    move v0, v4

    goto :goto_4

    :cond_4
    move v0, v3

    :goto_4
    sput-boolean v0, Lcom/android/server/secrecy/policy/util/LogUtil;->INFO:Z

    sget v0, Lcom/android/server/secrecy/policy/util/LogUtil;->LOGCAT_LEVEL:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_5

    move v0, v4

    goto :goto_5

    :cond_5
    move v0, v3

    :goto_5
    sput-boolean v0, Lcom/android/server/secrecy/policy/util/LogUtil;->WARN:Z

    sget v0, Lcom/android/server/secrecy/policy/util/LogUtil;->LOGCAT_LEVEL:I

    if-gt v0, v1, :cond_6

    move v3, v4

    nop

    :cond_6
    sput-boolean v3, Lcom/android/server/secrecy/policy/util/LogUtil;->ERROR:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/policy/util/LogUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/policy/util/LogUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static dynamicallyConfigLog(Z)V
    .locals 3

    sput-boolean p0, Lcom/android/server/secrecy/policy/util/LogUtil;->VERBOSE:Z

    sput-boolean p0, Lcom/android/server/secrecy/policy/util/LogUtil;->DEBUG:Z

    sput-boolean p0, Lcom/android/server/secrecy/policy/util/LogUtil;->INFO:Z

    sput-boolean p0, Lcom/android/server/secrecy/policy/util/LogUtil;->WARN:Z

    const-string v0, "SecrecyService.LogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dynamicallyConfigLog ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/policy/util/LogUtil;->ERROR:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/policy/util/LogUtil;->ERROR:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static getLevelString()Ljava/lang/String;
    .locals 3

    const-string v0, "("

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " VERBOSE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/secrecy/policy/util/LogUtil;->VERBOSE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", DEBUG = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/secrecy/policy/util/LogUtil;->DEBUG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", INFO = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/secrecy/policy/util/LogUtil;->INFO:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", WARN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/secrecy/policy/util/LogUtil;->WARN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ERROR = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/secrecy/policy/util/LogUtil;->ERROR:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/policy/util/LogUtil;->INFO:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/policy/util/LogUtil;->INFO:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static isDebug()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/policy/util/LogUtil;->IS_DEBUGING:Z

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/policy/util/LogUtil;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/policy/util/LogUtil;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/policy/util/LogUtil;->WARN:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/policy/util/LogUtil;->WARN:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/policy/util/LogUtil;->ERROR:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/policy/util/LogUtil;->ERROR:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
