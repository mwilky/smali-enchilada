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
    .param p2, "handler"    # Landroid/os/Handler;

    .line 177
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextClock$FormatChangeObserver;->this$0:Lcom/oneplus/aod/clock/OPTextClock;

    .line 178
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 179
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 183
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock$FormatChangeObserver;->this$0:Lcom/oneplus/aod/clock/OPTextClock;

    invoke-static {v0}, Lcom/oneplus/aod/clock/OPTextClock;->access$000(Lcom/oneplus/aod/clock/OPTextClock;)V

    .line 184
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock$FormatChangeObserver;->this$0:Lcom/oneplus/aod/clock/OPTextClock;

    invoke-static {v0}, Lcom/oneplus/aod/clock/OPTextClock;->access$100(Lcom/oneplus/aod/clock/OPTextClock;)V

    .line 185
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 189
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock$FormatChangeObserver;->this$0:Lcom/oneplus/aod/clock/OPTextClock;

    invoke-static {v0}, Lcom/oneplus/aod/clock/OPTextClock;->access$000(Lcom/oneplus/aod/clock/OPTextClock;)V

    .line 190
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock$FormatChangeObserver;->this$0:Lcom/oneplus/aod/clock/OPTextClock;

    invoke-static {v0}, Lcom/oneplus/aod/clock/OPTextClock;->access$100(Lcom/oneplus/aod/clock/OPTextClock;)V

    .line 191
    return-void
.end method
