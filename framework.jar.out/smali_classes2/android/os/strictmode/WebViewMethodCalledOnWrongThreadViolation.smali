.class public final Landroid/os/strictmode/WebViewMethodCalledOnWrongThreadViolation;
.super Landroid/os/strictmode/Violation;
.source "WebViewMethodCalledOnWrongThreadViolation.java"


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "originStack"    # Ljava/lang/Throwable;

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/strictmode/WebViewMethodCalledOnWrongThreadViolation;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 23
    return-void
.end method
