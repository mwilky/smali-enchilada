.class Landroid/util/KeyValueSettingObserver$SettingObserver;
.super Landroid/database/ContentObserver;
.source "KeyValueSettingObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/KeyValueSettingObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/KeyValueSettingObserver;


# direct methods
.method private constructor <init>(Landroid/util/KeyValueSettingObserver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/util/KeyValueSettingObserver$SettingObserver;->this$0:Landroid/util/KeyValueSettingObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/util/KeyValueSettingObserver;Landroid/os/Handler;Landroid/util/KeyValueSettingObserver$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/util/KeyValueSettingObserver$SettingObserver;-><init>(Landroid/util/KeyValueSettingObserver;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Landroid/util/KeyValueSettingObserver$SettingObserver;->this$0:Landroid/util/KeyValueSettingObserver;

    invoke-static {v0}, Landroid/util/KeyValueSettingObserver;->access$100(Landroid/util/KeyValueSettingObserver;)V

    iget-object v0, p0, Landroid/util/KeyValueSettingObserver$SettingObserver;->this$0:Landroid/util/KeyValueSettingObserver;

    iget-object v1, p0, Landroid/util/KeyValueSettingObserver$SettingObserver;->this$0:Landroid/util/KeyValueSettingObserver;

    invoke-static {v1}, Landroid/util/KeyValueSettingObserver;->access$200(Landroid/util/KeyValueSettingObserver;)Landroid/util/KeyValueListParser;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/KeyValueSettingObserver;->update(Landroid/util/KeyValueListParser;)V

    return-void
.end method
