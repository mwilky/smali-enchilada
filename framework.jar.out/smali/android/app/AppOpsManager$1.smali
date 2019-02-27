.class Landroid/app/AppOpsManager$1;
.super Ljava/util/ArrayList;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 955
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 956
    const-string v0, "android:oneplus_lock_app"

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$1;->add(Ljava/lang/Object;)Z

    .line 957
    const-string v0, "android:change_wifi_state"

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$1;->add(Ljava/lang/Object;)Z

    .line 958
    const-string v0, "android:bluetooth_admin"

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$1;->add(Ljava/lang/Object;)Z

    .line 959
    const-string v0, "android:oneplus_read_mode_app"

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$1;->add(Ljava/lang/Object;)Z

    .line 960
    const-string v0, "android:oneplus_game_mode_app"

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$1;->add(Ljava/lang/Object;)Z

    .line 961
    const-string v0, "android:oneplus_parallel_app"

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$1;->add(Ljava/lang/Object;)Z

    .line 962
    const-string v0, "android:oneplus_screen_compact"

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$1;->add(Ljava/lang/Object;)Z

    .line 963
    return-void
.end method
