.class public abstract Landroidx/slice/builders/impl/TemplateBuilderImpl;
.super Ljava/lang/Object;
.source "TemplateBuilderImpl.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mClock:Landroidx/slice/Clock;

.field private final mSliceBuilder:Landroidx/slice/Slice$Builder;

.field private final mSpec:Landroidx/slice/SliceSpec;


# direct methods
.method protected constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V
    .locals 1

    new-instance v0, Landroidx/slice/SystemClock;

    invoke-direct {v0}, Landroidx/slice/SystemClock;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/Clock;)V

    return-void
.end method

.method protected constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/Clock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    iput-object p2, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSpec:Landroidx/slice/SliceSpec;

    iput-object p3, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mClock:Landroidx/slice/Clock;

    return-void
.end method


# virtual methods
.method public abstract apply(Landroidx/slice/Slice$Builder;)V
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end method

.method public build()Landroidx/slice/Slice;
    .locals 2

    iget-object v0, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    iget-object v1, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSpec:Landroidx/slice/SliceSpec;

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->setSpec(Landroidx/slice/SliceSpec;)Landroidx/slice/Slice$Builder;

    iget-object v0, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-virtual {p0, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->apply(Landroidx/slice/Slice$Builder;)V

    iget-object v0, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public createChildBuilder()Landroidx/slice/Slice$Builder;
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    new-instance v0, Landroidx/slice/Slice$Builder;

    iget-object v1, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    return-object v0
.end method

.method public getBuilder()Landroidx/slice/Slice$Builder;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    return-object v0
.end method

.method public getClock()Landroidx/slice/Clock;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mClock:Landroidx/slice/Clock;

    return-object v0
.end method
