.class Lcom/android/systemui/qs/QuickStatusBarHeader$10;
.super Ljava/lang/Object;
.source "QuickStatusBarHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QuickStatusBarHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/android/systemui/qs/QuickStatusBarHeader$10;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    return-void
.end method

.method static access$0(Lcom/android/systemui/qs/QuickStatusBarHeader$10;)Lcom/android/systemui/qs/QuickStatusBarHeader;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/qs/QuickStatusBarHeader$10;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 301
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/qs/QuickStatusBarHeader$10;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v6}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$001(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/QSPanel;

    iget-object v6, v6, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    .line 303
    :goto_0
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    .line 301
    :cond_0
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 674
    iget-object v6, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    move-object v4, v6

    .line 303
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/qs/QuickStatusBarHeader$10;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v6}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$001(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/android/systemui/qs/QSPanel;->setSwipeAnimationTile(Lcom/android/systemui/plugins/qs/QSTileView;)V

    goto :goto_0
.end method
