.class final Landroid/provider/Settings$ParallelSettings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParallelSettings"
.end annotation


# static fields
.field public static final PARALLEL_READ_CONFIG:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARALLEL_WRITE_CONFIG:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Settings$ParallelSettings;->PARALLEL_WRITE_CONFIG:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Settings$ParallelSettings;->PARALLEL_READ_CONFIG:Ljava/util/HashSet;

    sget-object v0, Landroid/provider/Settings$ParallelSettings;->PARALLEL_READ_CONFIG:Ljava/util/HashSet;

    const-string/jumbo v1, "ringtone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$ParallelSettings;->PARALLEL_READ_CONFIG:Ljava/util/HashSet;

    const-string/jumbo v1, "ringtone_2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$ParallelSettings;->PARALLEL_READ_CONFIG:Ljava/util/HashSet;

    const-string/jumbo v1, "notification_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$ParallelSettings;->PARALLEL_READ_CONFIG:Ljava/util/HashSet;

    const-string v1, "alarm_alert"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$ParallelSettings;->PARALLEL_READ_CONFIG:Ljava/util/HashSet;

    const-string/jumbo v1, "mms_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$ParallelSettings;->PARALLEL_READ_CONFIG:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_screen_allow_private_notifications"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$ParallelSettings;->PARALLEL_READ_CONFIG:Ljava/util/HashSet;

    const-string/jumbo v1, "op_navigation_bar_type"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
