.class public final synthetic Landroid/app/-$$Lambda$KlsE01yvVI54Xvdo0TIjyhUKWHQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/app/KeyguardManager$KeyguardDismissCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/KeyguardManager$KeyguardDismissCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$KlsE01yvVI54Xvdo0TIjyhUKWHQ;->f$0:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/app/-$$Lambda$KlsE01yvVI54Xvdo0TIjyhUKWHQ;->f$0:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissCancelled()V

    return-void
.end method
