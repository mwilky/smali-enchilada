.class Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;
.super Ljava/lang/Object;
.source "DnsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/DnsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrivateDnsValidationStatuses"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;
    }
.end annotation


# instance fields
.field private mValidationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/net/InetAddress;",
            ">;",
            "Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/DnsManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->hasValidatedServer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->fillInValidatedPrivateDns(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->updateStatus(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->updateTrackedDnses([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fillInValidatedPrivateDns(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 2

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->setValidatedPrivateDnsServers(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    new-instance v1, Lcom/android/server/connectivity/-$$Lambda$DnsManager$PrivateDnsValidationStatuses$_X4_M08nKysv-L4hDpqAsa4SBxI;

    invoke-direct {v1, p1}, Lcom/android/server/connectivity/-$$Lambda$DnsManager$PrivateDnsValidationStatuses$_X4_M08nKysv-L4hDpqAsa4SBxI;-><init>(Landroid/net/LinkProperties;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object p1
.end method

.method private hasValidatedServer()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    sget-object v2, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;->SUCCEEDED:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$fillInValidatedPrivateDns$0(Landroid/net/LinkProperties;Landroid/util/Pair;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;)V
    .locals 1

    sget-object v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;->SUCCEEDED:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    if-ne p2, v0, :cond_0

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->addValidatedPrivateDnsServer(Ljava/net/InetAddress;)Z

    :cond_0
    return-void
.end method

.method private updateStatus(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V
    .locals 3

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->hostname:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->ipAddress:Ljava/net/InetAddress;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->validated:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    sget-object v2, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;->SUCCEEDED:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    sget-object v2, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;->FAILED:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private updateTrackedDnses([Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    :try_start_0
    new-instance v4, Landroid/util/Pair;

    invoke-static {v3}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v4, p2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_1
    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    sget-object v4, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;->IN_PROGRESS:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    goto :goto_3

    :cond_4
    return-void
.end method
