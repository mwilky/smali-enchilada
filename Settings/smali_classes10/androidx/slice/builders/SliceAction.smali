.class public Landroidx/slice/builders/SliceAction;
.super Ljava/lang/Object;
.source "SliceAction.java"

# interfaces
.implements Landroidx/slice/core/SliceAction;


# instance fields
.field private mSliceAction:Landroidx/slice/core/SliceActionImpl;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "action"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "actionIcon"    # Landroid/graphics/drawable/Icon;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "imageMode"    # I
    .param p4, "actionTitle"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    invoke-static {p2}, Landroid/support/v4/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "action"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "actionIcon"    # Landroid/graphics/drawable/Icon;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "actionTitle"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;ILjava/lang/CharSequence;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "action"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "actionIcon"    # Landroid/graphics/drawable/Icon;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "actionTitle"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "isChecked"    # Z
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    invoke-static {p2}, Landroid/support/v4/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Z)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "action"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "actionIcon"    # Landroid/support/v4/graphics/drawable/IconCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "imageMode"    # I
    .param p4, "actionTitle"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "action"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "actionIcon"    # Landroid/support/v4/graphics/drawable/IconCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "actionTitle"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "action"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "actionIcon"    # Landroid/support/v4/graphics/drawable/IconCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "actionTitle"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "isChecked"    # Z

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Z)V

    iput-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "action"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "actionTitle"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "isChecked"    # Z

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v0, p1, p2, p3}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V

    iput-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    .line 132
    return-void
.end method


# virtual methods
.method public buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;
    .locals 1
    .param p1, "builder"    # Landroidx/slice/Slice$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0, p1}, Landroidx/slice/core/SliceActionImpl;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Landroid/app/PendingIntent;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 171
    iget-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getAction()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 199
    iget-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/support/v4/graphics/drawable/IconCompat;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 181
    iget-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getIcon()Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v0

    return-object v0
.end method

.method public getImageMode()I
    .locals 1

    .line 231
    iget-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getImageMode()I

    move-result v0

    return v0
.end method

.method public getImpl()Landroidx/slice/core/SliceActionImpl;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 207
    iget-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getPriority()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 190
    iget-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 223
    iget-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isDefaultToggle()Z
    .locals 1

    .line 239
    iget-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->isDefaultToggle()Z

    move-result v0

    return v0
.end method

.method public isToggle()Z
    .locals 1

    .line 215
    iget-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Landroidx/slice/builders/SliceAction;
    .locals 1
    .param p1, "isChecked"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 151
    iget-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0, p1}, Landroidx/slice/core/SliceActionImpl;->setChecked(Z)Landroidx/slice/core/SliceActionImpl;

    .line 152
    return-object p0
.end method

.method public bridge synthetic setChecked(Z)Landroidx/slice/core/SliceAction;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Landroidx/slice/builders/SliceAction;->setChecked(Z)Landroidx/slice/builders/SliceAction;

    move-result-object p1

    return-object p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 140
    iget-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0, p1}, Landroidx/slice/core/SliceActionImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/core/SliceActionImpl;

    .line 141
    return-object p0
.end method

.method public bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/core/SliceAction;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Landroidx/slice/builders/SliceAction;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p1

    return-object p1
.end method

.method public setPriority(I)Landroidx/slice/builders/SliceAction;
    .locals 1
    .param p1, "priority"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 161
    iget-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0, p1}, Landroidx/slice/core/SliceActionImpl;->setPriority(I)Landroidx/slice/core/SliceActionImpl;

    .line 162
    return-object p0
.end method

.method public bridge synthetic setPriority(I)Landroidx/slice/core/SliceAction;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Landroidx/slice/builders/SliceAction;->setPriority(I)Landroidx/slice/builders/SliceAction;

    move-result-object p1

    return-object p1
.end method
