.class public final synthetic Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/SystemServer;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$10:Lcom/android/server/NetworkTimeUpdateService;

.field private final synthetic f$11:Lcom/android/server/CommonTimeManagementService;

.field private final synthetic f$12:Lcom/android/server/input/InputManagerService;

.field private final synthetic f$13:Lcom/android/server/TelephonyRegistry;

.field private final synthetic f$14:Lcom/android/server/media/MediaRouterService;

.field private final synthetic f$15:Lcom/android/server/MmsServiceBroker;

.field private final synthetic f$16:Lcom/android/server/OemExService;

.field private final synthetic f$17:Lcom/android/server/OnePlusNfcService;

.field private final synthetic f$2:Lcom/android/server/wm/WindowManagerService;

.field private final synthetic f$3:Lcom/android/server/NetworkManagementService;

.field private final synthetic f$4:Lcom/android/server/net/NetworkPolicyManagerService;

.field private final synthetic f$5:Lcom/android/server/IpSecService;

.field private final synthetic f$6:Lcom/android/server/net/NetworkStatsService;

.field private final synthetic f$7:Lcom/android/server/ConnectivityService;

.field private final synthetic f$8:Lcom/android/server/LocationManagerService;

.field private final synthetic f$9:Lcom/android/server/CountryDetectorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/android/server/OemExService;Lcom/android/server/OnePlusNfcService;)V
    .locals 2

    move-object v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$0:Lcom/android/server/SystemServer;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$1:Landroid/content/Context;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$2:Lcom/android/server/wm/WindowManagerService;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$3:Lcom/android/server/NetworkManagementService;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$4:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$5:Lcom/android/server/IpSecService;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$6:Lcom/android/server/net/NetworkStatsService;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$7:Lcom/android/server/ConnectivityService;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$8:Lcom/android/server/LocationManagerService;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$9:Lcom/android/server/CountryDetectorService;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$10:Lcom/android/server/NetworkTimeUpdateService;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$11:Lcom/android/server/CommonTimeManagementService;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$12:Lcom/android/server/input/InputManagerService;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$13:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$14:Lcom/android/server/media/MediaRouterService;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$15:Lcom/android/server/MmsServiceBroker;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$16:Lcom/android/server/OemExService;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$17:Lcom/android/server/OnePlusNfcService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$0:Lcom/android/server/SystemServer;

    iget-object v2, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$1:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$2:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$3:Lcom/android/server/NetworkManagementService;

    iget-object v5, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$4:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v6, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$5:Lcom/android/server/IpSecService;

    iget-object v7, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$6:Lcom/android/server/net/NetworkStatsService;

    iget-object v8, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$7:Lcom/android/server/ConnectivityService;

    iget-object v9, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$8:Lcom/android/server/LocationManagerService;

    iget-object v10, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$9:Lcom/android/server/CountryDetectorService;

    iget-object v11, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$10:Lcom/android/server/NetworkTimeUpdateService;

    iget-object v12, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$11:Lcom/android/server/CommonTimeManagementService;

    iget-object v13, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$12:Lcom/android/server/input/InputManagerService;

    iget-object v14, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$13:Lcom/android/server/TelephonyRegistry;

    iget-object v15, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$14:Lcom/android/server/media/MediaRouterService;

    move-object/from16 v18, v15

    iget-object v15, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$15:Lcom/android/server/MmsServiceBroker;

    move-object/from16 v19, v15

    iget-object v15, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$16:Lcom/android/server/OemExService;

    iget-object v0, v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;->f$17:Lcom/android/server/OnePlusNfcService;

    move-object/from16 v17, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v18

    move-object/from16 v16, v15

    move-object/from16 v15, v19

    invoke-static/range {v0 .. v17}, Lcom/android/server/SystemServer;->lambda$startOtherServices$4(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/android/server/OemExService;Lcom/android/server/OnePlusNfcService;)V

    return-void
.end method
