.class public final Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;
.super Ljava/lang/Object;
.source "DataSwitchTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DataSwitchTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "DataSwitchSignalCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DataSwitchTile;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tiles/DataSwitchTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/DataSwitchTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setVirtualSimstate([I)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    sget v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_DISABLE:I

    if-eq v3, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/DataSwitchTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->access$300(Lcom/android/systemui/qs/tiles/DataSwitchTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "virtual sim state change: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/DataSwitchTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->access$400(Lcom/android/systemui/qs/tiles/DataSwitchTile;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/DataSwitchTile;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->access$402(Lcom/android/systemui/qs/tiles/DataSwitchTile;Z)Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/DataSwitchTile;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->refreshState()V

    return-void
.end method
