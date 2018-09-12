.class Lcom/oneplus/aod/clock/OPTextDate$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "OPTextDate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/clock/OPTextDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/clock/OPTextDate;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/clock/OPTextDate;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 159
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate$FormatChangeObserver;->this$0:Lcom/oneplus/aod/clock/OPTextDate;

    .line 160
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 161
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 165
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate$FormatChangeObserver;->this$0:Lcom/oneplus/aod/clock/OPTextDate;

    invoke-static {v0}, Lcom/oneplus/aod/clock/OPTextDate;->access$000(Lcom/oneplus/aod/clock/OPTextDate;)V

    .line 166
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate$FormatChangeObserver;->this$0:Lcom/oneplus/aod/clock/OPTextDate;

    invoke-static {v0}, Lcom/oneplus/aod/clock/OPTextDate;->access$100(Lcom/oneplus/aod/clock/OPTextDate;)V

    .line 167
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 171
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate$FormatChangeObserver;->this$0:Lcom/oneplus/aod/clock/OPTextDate;

    invoke-static {v0}, Lcom/oneplus/aod/clock/OPTextDate;->access$000(Lcom/oneplus/aod/clock/OPTextDate;)V

    .line 172
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate$FormatChangeObserver;->this$0:Lcom/oneplus/aod/clock/OPTextDate;

    invoke-static {v0}, Lcom/oneplus/aod/clock/OPTextDate;->access$100(Lcom/oneplus/aod/clock/OPTextDate;)V

    .line 173
    return-void
.end method
