.class Lcom/android/server/am/OnePlusIdleWhiltelistManager$IdleWhilteListConfigUpdater;
.super Ljava/lang/Object;
.source "OnePlusIdleWhiltelistManager.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusIdleWhiltelistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleWhilteListConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusIdleWhiltelistManager;


# direct methods
.method private constructor <init>(Lcom/android/server/am/OnePlusIdleWhiltelistManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager$IdleWhilteListConfigUpdater;->this$0:Lcom/android/server/am/OnePlusIdleWhiltelistManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OnePlusIdleWhiltelistManager;Lcom/android/server/am/OnePlusIdleWhiltelistManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusIdleWhiltelistManager$IdleWhilteListConfigUpdater;-><init>(Lcom/android/server/am/OnePlusIdleWhiltelistManager;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager$IdleWhilteListConfigUpdater;->this$0:Lcom/android/server/am/OnePlusIdleWhiltelistManager;

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->access$100(Lcom/android/server/am/OnePlusIdleWhiltelistManager;Lorg/json/JSONArray;)V

    return-void
.end method
