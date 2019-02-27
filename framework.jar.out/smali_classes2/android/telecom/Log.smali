.class public Landroid/telecom/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static DEBUG:Z = false

.field public static ERROR:Z = false

.field private static final EVENTS_TO_CACHE:I = 0xa

.field private static final EVENTS_TO_CACHE_DEBUG:I = 0x14

.field private static final EXTENDED_LOGGING_DURATION_MILLIS:J = 0x1b7740L

.field private static final FORCE_LOGGING:Z = false

.field public static INFO:Z

.field public static TAG:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final USER_BUILD:Z

.field public static VERBOSE:Z

.field public static WARN:Z

.field private static sEventManager:Landroid/telecom/Logging/EventManager;

.field private static sIsUserExtendedLoggingEnabled:Z

.field private static sSessionManager:Landroid/telecom/Logging/SessionManager;

.field private static final sSingletonSync:Ljava/lang/Object;

.field private static sUserExtendedLoggingStopTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "TelecomFramework"

    sput-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    const/4 v0, 0x4

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->INFO:Z

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->WARN:Z

    const/4 v0, 0x6

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->ERROR:Z

    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    sput-boolean v0, Landroid/telecom/Log;->USER_BUILD:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/telecom/Log;->sUserExtendedLoggingStopTime:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEvent(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/telecom/Logging/EventManager;->event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static addEvent(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Logging/EventManager;->event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs addEvent(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/telecom/Logging/EventManager;->event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static addRequestResponsePair(Landroid/telecom/Logging/EventManager$TimedEventPair;)V
    .locals 1

    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/EventManager;->addRequestResponsePair(Landroid/telecom/Logging/EventManager$TimedEventPair;)V

    return-void
.end method

.method private static varargs buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 10

    invoke-static {}, Landroid/telecom/Log;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p2, :cond_2

    :try_start_0
    array-length v5, p2

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v5, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    sget-object v6, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    const-string v7, "Log: IllegalFormatException: formatString=\'%s\' numArgs=%d"

    new-array v8, v4, [Ljava/lang/Object;

    aput-object p1, v8, v3

    array-length v9, p2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v6, v5, v7, v8}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (An error occurred while formatting the message.)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_2
    :goto_1
    move-object v5, p1

    :goto_2
    nop

    :goto_3
    nop

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s: %s%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v3

    aput-object v5, v8, v2

    aput-object v1, v8, v4

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static cancelSubsession(Landroid/telecom/Logging/Session;)V
    .locals 1

    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/SessionManager;->cancelSubsession(Landroid/telecom/Logging/Session;)V

    return-void
.end method

.method public static continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Logging/SessionManager;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    return-void
.end method

.method public static createSubsession()Landroid/telecom/Logging/Session;
    .locals 1

    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Logging/SessionManager;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v0

    return-object v0
.end method

.method public static varargs d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/telecom/Log;->maybeDisableLogging()V

    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/telecom/Log;->maybeDisableLogging()V

    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static dumpEvents(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/telecom/Logging/EventManager;->dumpEvents(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_0

    :cond_0
    const-string v1, "No Historical Events Logged."

    invoke-virtual {p0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static dumpEventsTimeline(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/telecom/Logging/EventManager;->dumpEventsTimeline(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_0

    :cond_0
    const-string v1, "No Historical Events Logged."

    invoke-virtual {p0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Landroid/telecom/Log;->ERROR:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Landroid/telecom/Log;->ERROR:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static endSession()V
    .locals 1

    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Logging/SessionManager;->endSession()V

    return-void
.end method

.method private static getEventManager()Landroid/telecom/Logging/EventManager;
    .locals 3

    sget-object v0, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-nez v0, :cond_1

    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-nez v1, :cond_0

    new-instance v1, Landroid/telecom/Logging/EventManager;

    sget-object v2, Landroid/telecom/-$$Lambda$qa4s1Fm2YuohEunaJUJcmJXDXG0;->INSTANCE:Landroid/telecom/-$$Lambda$qa4s1Fm2YuohEunaJUJcmJXDXG0;

    invoke-direct {v1, v2}, Landroid/telecom/Logging/EventManager;-><init>(Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;)V

    sput-object v1, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    sget-object v1, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    return-object v0
.end method

.method public static getExternalSession()Landroid/telecom/Logging/Session$Info;
    .locals 1

    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Logging/SessionManager;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v0

    return-object v0
.end method

.method private static getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "<null>"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getSessionId()Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Logging/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    const-string v1, ""

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSessionManager()Landroid/telecom/Logging/SessionManager;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    sget-object v0, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    if-nez v0, :cond_1

    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    if-nez v1, :cond_0

    new-instance v1, Landroid/telecom/Logging/SessionManager;

    invoke-direct {v1}, Landroid/telecom/Logging/SessionManager;-><init>()V

    sput-object v1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    sget-object v1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    return-object v0
.end method

.method public static varargs i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Landroid/telecom/Log;->INFO:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Landroid/telecom/Log;->INFO:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static isLoggable(I)Z
    .locals 1

    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static maybeDisableLogging()V
    .locals 4

    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-wide v0, Landroid/telecom/Log;->sUserExtendedLoggingStopTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/telecom/Log;->sUserExtendedLoggingStopTime:J

    const/4 v0, 0x0

    sput-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    :cond_1
    return-void
.end method

.method public static pii(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "***"

    return-object v0

    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static piiHandle(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    if-eqz p0, :cond_7

    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v1, p0, Landroid/net/Uri;

    if-eqz v1, :cond_6

    move-object v1, p0

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "tel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    nop

    :goto_0
    move v4, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "*"

    goto :goto_1

    :cond_2
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v4, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "sip"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    nop

    :goto_2
    move v4, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x40

    if-eq v5, v6, :cond_4

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_4

    const/16 v5, 0x2a

    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v4, 0x1

    goto :goto_2

    :cond_5
    invoke-static {p0}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_7
    :goto_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static registerEventListener(Landroid/telecom/Logging/EventManager$EventListener;)V
    .locals 1

    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/EventManager;->registerEventListener(Landroid/telecom/Logging/EventManager$EventListener;)V

    return-void
.end method

.method public static registerSessionListener(Landroid/telecom/Logging/SessionManager$ISessionListener;)V
    .locals 1

    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/SessionManager;->registerSessionListener(Landroid/telecom/Logging/SessionManager$ISessionListener;)V

    return-void
.end method

.method public static setIsExtendedLoggingEnabled(Z)V
    .locals 4

    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-eqz v0, :cond_2

    sget-object v0, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-eqz p0, :cond_1

    const/16 v1, 0x14

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    :goto_0
    invoke-virtual {v0, v1}, Landroid/telecom/Logging/EventManager;->changeEventCacheSize(I)V

    :cond_2
    sput-boolean p0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    sput-wide v0, Landroid/telecom/Log;->sUserExtendedLoggingStopTime:J

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/telecom/Log;->sUserExtendedLoggingStopTime:J

    :goto_1
    return-void
.end method

.method public static setSessionContext(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/SessionManager;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public static setTag(Ljava/lang/String;)V
    .locals 1

    sput-object p0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    const/4 v0, 0x4

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->INFO:Z

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->WARN:Z

    const/4 v0, 0x6

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->ERROR:Z

    return-void
.end method

.method public static startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/telecom/Logging/SessionManager;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Logging/SessionManager;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startSession(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telecom/Logging/SessionManager;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Logging/SessionManager;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static varargs v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/telecom/Log;->maybeDisableLogging()V

    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/telecom/Log;->maybeDisableLogging()V

    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Landroid/telecom/Log;->WARN:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Landroid/telecom/Log;->WARN:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static varargs wtf(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
