.class Lcom/android/systemui/qs/tiles/NightDisplayTile$2;
.super Lcom/android/systemui/qs/SecureSetting;
.source "NightDisplayTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/NightDisplayTile;-><init>(Lcom/android/systemui/qs/QSHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/NightDisplayTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/NightDisplayTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile$2;->this$0:Lcom/android/systemui/qs/tiles/NightDisplayTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SecureSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile$2;->this$0:Lcom/android/systemui/qs/tiles/NightDisplayTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->refreshState()V

    return-void
.end method
