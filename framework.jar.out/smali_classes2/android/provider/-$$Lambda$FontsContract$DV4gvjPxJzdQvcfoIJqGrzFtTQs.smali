.class public final synthetic Landroid/provider/-$$Lambda$FontsContract$DV4gvjPxJzdQvcfoIJqGrzFtTQs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/provider/FontsContract$FontRequestCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/-$$Lambda$FontsContract$DV4gvjPxJzdQvcfoIJqGrzFtTQs;->f$0:Landroid/provider/FontsContract$FontRequestCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/provider/-$$Lambda$FontsContract$DV4gvjPxJzdQvcfoIJqGrzFtTQs;->f$0:Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v0}, Landroid/provider/FontsContract;->lambda$requestFonts$6(Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void
.end method
