.class public Landroid/telecom/Logging/EventManager;
.super Ljava/lang/Object;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Logging/EventManager$EventRecord;,
        Landroid/telecom/Logging/EventManager$Event;,
        Landroid/telecom/Logging/EventManager$TimedEventPair;,
        Landroid/telecom/Logging/EventManager$EventListener;,
        Landroid/telecom/Logging/EventManager$Loggable;
    }
.end annotation


# static fields
.field public static final DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

.field public static final DEFAULT_EVENTS_TO_CACHE:I = 0xa
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "Logging.Events"

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private final mCallEventRecordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telecom/Logging/EventManager$Loggable;",
            "Landroid/telecom/Logging/EventManager$EventRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Logging/EventManager$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/telecom/Logging/EventManager$EventRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionIdHandler:Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;

.field private final requestResponsePairs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/telecom/Logging/EventManager$TimedEventPair;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Landroid/telecom/Logging/EventManager;->DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telecom/Logging/EventManager;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/EventManager;->mEventListeners:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/EventManager;->requestResponsePairs:Ljava/util/Map;

    iput-object p1, p0, Landroid/telecom/Logging/EventManager;->mSessionIdHandler:Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;

    return-void
.end method

.method static synthetic access$000(Landroid/telecom/Logging/EventManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->requestResponsePairs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Landroid/telecom/Logging/EventManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    return-object v0
.end method

.method private addEventRecord(Landroid/telecom/Logging/EventManager$EventRecord;)V
    .locals 4

    invoke-virtual {p1}, Landroid/telecom/Logging/EventManager$EventRecord;->getRecordEntry()Landroid/telecom/Logging/EventManager$Loggable;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remainingCapacity()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/EventManager$EventRecord;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telecom/Logging/EventManager$EventRecord;->getRecordEntry()Landroid/telecom/Logging/EventManager$Loggable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/telecom/Logging/EventManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/telecom/Logging/EventManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/EventManager$EventListener;

    invoke-interface {v3, p1}, Landroid/telecom/Logging/EventManager$EventListener;->eventRecordAdded(Landroid/telecom/Logging/EventManager$EventRecord;)V

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static synthetic lambda$changeEventCacheSize$1(Landroid/telecom/Logging/EventManager;Landroid/telecom/Logging/EventManager$EventRecord;)V
    .locals 4

    invoke-virtual {p1}, Landroid/telecom/Logging/EventManager$EventRecord;->getRecordEntry()Landroid/telecom/Logging/EventManager$Loggable;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remainingCapacity()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/EventManager$EventRecord;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telecom/Logging/EventManager$EventRecord;->getRecordEntry()Landroid/telecom/Logging/EventManager$Loggable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$dumpEventsTimeline$0(Landroid/util/Pair;)J
    .locals 2

    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/EventManager$Event;

    iget-wide v0, v0, Landroid/telecom/Logging/EventManager$Event;->time:J

    return-wide v0
.end method


# virtual methods
.method public addRequestResponsePair(Landroid/telecom/Logging/EventManager$TimedEventPair;)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->requestResponsePairs:Ljava/util/Map;

    iget-object v1, p1, Landroid/telecom/Logging/EventManager$TimedEventPair;->mRequest:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->requestResponsePairs:Ljava/util/Map;

    iget-object v1, p1, Landroid/telecom/Logging/EventManager$TimedEventPair;->mRequest:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->requestResponsePairs:Ljava/util/Map;

    iget-object v2, p1, Landroid/telecom/Logging/EventManager$TimedEventPair;->mRequest:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public changeEventCacheSize(I)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    new-instance v1, Landroid/telecom/Logging/-$$Lambda$EventManager$uddp6XAJ90VBwdTiuzBdSYelntQ;

    invoke-direct {v1, p0}, Landroid/telecom/Logging/-$$Lambda$EventManager$uddp6XAJ90VBwdTiuzBdSYelntQ;-><init>(Landroid/telecom/Logging/EventManager;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dumpEvents(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    const-string v0, "Historical Events:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/EventManager$EventRecord;

    invoke-virtual {v1, p1}, Landroid/telecom/Logging/EventManager$EventRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public dumpEventsTimeline(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 7

    const-string v0, "Historical Events (sorted by time):"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/EventManager$EventRecord;

    invoke-virtual {v2}, Landroid/telecom/Logging/EventManager$EventRecord;->getEvents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/EventManager$Event;

    new-instance v5, Landroid/util/Pair;

    invoke-virtual {v2}, Landroid/telecom/Logging/EventManager$EventRecord;->getRecordEntry()Landroid/telecom/Logging/EventManager$Loggable;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    sget-object v1, Landroid/telecom/Logging/-$$Lambda$EventManager$weOtitr8e1cZeiy1aDSqzNoKaY8;->INSTANCE:Landroid/telecom/Logging/-$$Lambda$EventManager$weOtitr8e1cZeiy1aDSqzNoKaY8;

    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/Logging/EventManager$Event;

    iget-object v4, v4, Landroid/telecom/Logging/EventManager$Event;->timestampString:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/Logging/EventManager$Loggable;

    invoke-interface {v4}, Landroid/telecom/Logging/EventManager$Loggable;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/Logging/EventManager$Event;

    iget-object v4, v4, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/Logging/EventManager$Event;

    iget-object v4, v4, Landroid/telecom/Logging/EventManager$Event;->data:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->mSessionIdHandler:Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;

    invoke-interface {v0}, Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    const-string v1, "Logging.Events"

    const-string v2, "Non-call EVENT: %s, %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-static {v1, v2, v3}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Landroid/telecom/Logging/EventManager$EventRecord;

    invoke-direct {v2, p0, p1}, Landroid/telecom/Logging/EventManager$EventRecord;-><init>(Landroid/telecom/Logging/EventManager;Landroid/telecom/Logging/EventManager$Loggable;)V

    invoke-direct {p0, v2}, Landroid/telecom/Logging/EventManager;->addEventRecord(Landroid/telecom/Logging/EventManager$EventRecord;)V

    :cond_1
    iget-object v2, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/EventManager$EventRecord;

    invoke-virtual {v2, p2, v0, p3}, Landroid/telecom/Logging/EventManager$EventRecord;->addEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public varargs event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    if-eqz p4, :cond_1

    :try_start_0
    array-length v0, p4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p3, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "IllegalFormatException: formatString=\'%s\' numArgs=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    array-length v4, p4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v1, v2}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (An error occurred while formatting the message.)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    :goto_0
    move-object v0, p3

    :goto_1
    nop

    :goto_2
    nop

    invoke-virtual {p0, p1, p2, v0}, Landroid/telecom/Logging/EventManager;->event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public getCallEventRecordMap()Ljava/util/Map;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/telecom/Logging/EventManager$Loggable;",
            "Landroid/telecom/Logging/EventManager$EventRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    return-object v0
.end method

.method public getEventRecords()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/telecom/Logging/EventManager$EventRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public registerEventListener(Landroid/telecom/Logging/EventManager$EventListener;)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Landroid/telecom/Logging/EventManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method
