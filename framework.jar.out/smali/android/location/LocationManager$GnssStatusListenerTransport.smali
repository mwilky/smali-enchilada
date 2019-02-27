.class Landroid/location/LocationManager$GnssStatusListenerTransport;
.super Landroid/location/IGnssStatusListener$Stub;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnssStatusListenerTransport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;,
        Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;
    }
.end annotation


# static fields
.field private static final NMEA_RECEIVED:I = 0x3e8


# instance fields
.field private final mGnssCallback:Landroid/location/GnssStatus$Callback;

.field private final mGnssHandler:Landroid/os/Handler;

.field private final mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

.field private final mGpsListener:Landroid/location/GpsStatus$Listener;

.field private final mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

.field private final mNmeaBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GnssStatus$Callback;)V
    .locals 1
    .param p2, "callback"    # Landroid/location/GnssStatus$Callback;

    .line 1828
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)V

    .line 1829
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)V
    .locals 0
    .param p2, "callback"    # Landroid/location/GnssStatus$Callback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1831
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    .line 1832
    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    .line 1833
    new-instance p1, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;

    invoke-direct {p1, p0, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V

    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    .line 1834
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    .line 1835
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    .line 1836
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    .line 1837
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 1838
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;)V
    .locals 1
    .param p2, "listener"    # Landroid/location/GpsStatus$Listener;

    .line 1777
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;Landroid/os/Handler;)V

    .line 1778
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;Landroid/os/Handler;)V
    .locals 2
    .param p2, "listener"    # Landroid/location/GpsStatus$Listener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1780
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    .line 1781
    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    .line 1782
    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;

    invoke-direct {v0, p0, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    .line 1783
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 1784
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    .line 1785
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/location/LocationManager$GnssStatusListenerTransport$1;

    invoke-direct {v1, p0, p1}, Landroid/location/LocationManager$GnssStatusListenerTransport$1;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/location/LocationManager;)V

    goto :goto_0

    .line 1805
    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    .line 1806
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    .line 1807
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;)V
    .locals 1
    .param p2, "listener"    # Landroid/location/GpsStatus$NmeaListener;

    .line 1810
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;Landroid/os/Handler;)V

    .line 1811
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;Landroid/os/Handler;)V
    .locals 2
    .param p2, "listener"    # Landroid/location/GpsStatus$NmeaListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1813
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    .line 1814
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    .line 1815
    new-instance v1, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;

    invoke-direct {v1, p0, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    .line 1816
    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 1817
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    .line 1818
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    .line 1819
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$2;

    invoke-direct {v0, p0, p1}, Landroid/location/LocationManager$GnssStatusListenerTransport$2;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/location/LocationManager;)V

    nop

    .line 1824
    :cond_0
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    .line 1825
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/OnNmeaMessageListener;)V
    .locals 1
    .param p2, "listener"    # Landroid/location/OnNmeaMessageListener;

    .line 1841
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)V

    .line 1842
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)V
    .locals 1
    .param p2, "listener"    # Landroid/location/OnNmeaMessageListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1844
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    .line 1845
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    .line 1846
    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;

    invoke-direct {v0, p0, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    .line 1847
    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    .line 1848
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    .line 1849
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 1850
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    .line 1851
    return-void
.end method

.method static synthetic access$300(Landroid/location/LocationManager$GnssStatusListenerTransport;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 1717
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/OnNmeaMessageListener;
    .locals 1
    .param p0, "x0"    # Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 1717
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatus$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 1717
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    return-object v0
.end method

.method static synthetic access$800(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GpsStatus$Listener;
    .locals 1
    .param p0, "x0"    # Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 1717
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    return-object v0
.end method

.method static synthetic access$900(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GpsStatus$NmeaListener;
    .locals 1
    .param p0, "x0"    # Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 1717
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    return-object v0
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 2
    .param p1, "ttff"    # I

    .line 1873
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    if-eqz v0, :cond_0

    .line 1874
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-static {v0, p1}, Landroid/location/LocationManager;->access$602(Landroid/location/LocationManager;I)I

    .line 1875
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1876
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1877
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1879
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onGnssStarted()V
    .locals 2

    .line 1855
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    if-eqz v0, :cond_0

    .line 1856
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1857
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1858
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1860
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onGnssStopped()V
    .locals 2

    .line 1864
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    if-eqz v0, :cond_0

    .line 1865
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1866
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1867
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1869
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 3
    .param p1, "timestamp"    # J
    .param p3, "nmea"    # Ljava/lang/String;

    .line 1898
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    if-eqz v0, :cond_0

    .line 1899
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1900
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    new-instance v2, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;JLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1901
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1902
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1903
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1905
    iget-object v2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1906
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 1901
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1908
    :cond_0
    :goto_0
    return-void
.end method

.method public onSvStatusChanged(I[I[F[F[F[F)V
    .locals 9
    .param p1, "svCount"    # I
    .param p2, "prnWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F
    .param p6, "carrierFreqs"    # [F

    .line 1884
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    if-eqz v0, :cond_0

    .line 1885
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    new-instance v8, Landroid/location/GnssStatus;

    move-object v1, v8

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Landroid/location/GnssStatus;-><init>(I[I[F[F[F[F)V

    invoke-static {v0, v8}, Landroid/location/LocationManager;->access$702(Landroid/location/LocationManager;Landroid/location/GnssStatus;)Landroid/location/GnssStatus;

    .line 1888
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1889
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1891
    iget-object v2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1892
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1894
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
