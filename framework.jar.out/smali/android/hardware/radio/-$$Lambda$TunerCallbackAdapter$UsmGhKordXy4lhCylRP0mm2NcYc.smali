.class public final synthetic Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$UsmGhKordXy4lhCylRP0mm2NcYc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/hardware/radio/TunerCallbackAdapter;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/TunerCallbackAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$UsmGhKordXy4lhCylRP0mm2NcYc;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$UsmGhKordXy4lhCylRP0mm2NcYc;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-static {v0}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onProgramListChanged$12(Landroid/hardware/radio/TunerCallbackAdapter;)V

    return-void
.end method
