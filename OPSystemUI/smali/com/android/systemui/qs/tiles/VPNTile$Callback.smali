.class Lcom/android/systemui/qs/tiles/VPNTile$Callback;
.super Ljava/lang/Object;
.source "VPNTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/VPNTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/VPNTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/VPNTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VPNTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/VPNTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/VPNTile;Lcom/android/systemui/qs/tiles/VPNTile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/VPNTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/VPNTile;)V

    return-void
.end method


# virtual methods
.method public onStateChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VPNTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/VPNTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/VPNTile;->refreshState()V

    return-void
.end method
