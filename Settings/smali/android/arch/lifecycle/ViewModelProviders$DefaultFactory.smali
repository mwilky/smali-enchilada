.class public Landroid/arch/lifecycle/ViewModelProviders$DefaultFactory;
.super Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;
.source "ViewModelProviders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/ViewModelProviders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultFactory"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    .line 148
    return-void
.end method
