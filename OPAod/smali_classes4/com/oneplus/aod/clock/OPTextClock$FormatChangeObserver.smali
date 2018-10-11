.class Lcom/oneplus/aod/clock/OPTextClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "OPTextClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/clock/OPTextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/clock/OPTextClock;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/clock/OPTextClock;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextClock$FormatChangeObserver;->this$0:Lcom/oneplus/aod/clock/OPTextClock;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock$FormatChangeObserver;->this$0:Lcom/oneplus/aod/clock/OPTextClock;

    invoke-static {v0}, Lcom/oneplus/aod/clock/OPTextClock;->access$000(Lcom/oneplus/aod/clock/OPTextClock;)V

    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock$FormatChangeObserver;->this$0:Lcom/oneplus/aod/clock/OPTextClock;

    invoke-static {v0}, Lcom/oneplus/aod/clock/OPTextClock;->access$100(Lcom/oneplus/aod/clock/OPTextClock;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock$FormatChangeObserver;->this$0:Lcom/oneplus/aod/clock/OPTextClock;

    invoke-static {v0}, Lcom/oneplus/aod/clock/OPTextClock;->access$000(Lcom/oneplus/aod/clock/OPTextClock;)V

    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock$FormatChangeObserver;->this$0:Lcom/oneplus/aod/clock/OPTextClock;

    invoke-static {v0}, Lcom/oneplus/aod/clock/OPTextClock;->access$100(Lcom/oneplus/aod/clock/OPTextClock;)V

    return-void
.end method
