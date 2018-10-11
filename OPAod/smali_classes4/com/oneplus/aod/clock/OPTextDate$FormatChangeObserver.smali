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

    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate$FormatChangeObserver;->this$0:Lcom/oneplus/aod/clock/OPTextDate;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate$FormatChangeObserver;->this$0:Lcom/oneplus/aod/clock/OPTextDate;

    invoke-static {v0}, Lcom/oneplus/aod/clock/OPTextDate;->access$000(Lcom/oneplus/aod/clock/OPTextDate;)V

    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate$FormatChangeObserver;->this$0:Lcom/oneplus/aod/clock/OPTextDate;

    invoke-static {v0}, Lcom/oneplus/aod/clock/OPTextDate;->access$100(Lcom/oneplus/aod/clock/OPTextDate;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate$FormatChangeObserver;->this$0:Lcom/oneplus/aod/clock/OPTextDate;

    invoke-static {v0}, Lcom/oneplus/aod/clock/OPTextDate;->access$000(Lcom/oneplus/aod/clock/OPTextDate;)V

    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate$FormatChangeObserver;->this$0:Lcom/oneplus/aod/clock/OPTextDate;

    invoke-static {v0}, Lcom/oneplus/aod/clock/OPTextDate;->access$100(Lcom/oneplus/aod/clock/OPTextDate;)V

    return-void
.end method
