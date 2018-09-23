.class Lcom/android/server/pm/dex/DexManager$1;
.super Landroid/database/ContentObserver;
.source "DexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/dex/DexManager;->registerSettingObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/dex/DexManager;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/pm/dex/DexManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/dex/DexManager$1;->this$0:Lcom/android/server/pm/dex/DexManager;

    iput-object p3, p0, Lcom/android/server/pm/dex/DexManager$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager$1;->val$resolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "priv_app_oob_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "pm.dexopt.priv-apps-oob"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string/jumbo v2, "true"

    goto :goto_0

    :cond_0
    const-string v2, "false"

    :goto_0
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
