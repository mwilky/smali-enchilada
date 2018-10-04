.class Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;
.super Landroid/app/VoiceInteractor$PickOptionRequest;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PickTargetOptionRequest"
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/VoiceInteractor$PickOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    invoke-super {p0}, Landroid/app/VoiceInteractor$PickOptionRequest;->onCancel()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/ResolverActivity;->access$1502(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/app/VoiceInteractor$PickOptionRequest;->onPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    array-length v0, p2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    const/4 v2, 0x0

    aget-object v3, p2, v2

    invoke-virtual {v3}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/app/ResolverActivity;->access$1502(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_1
    return-void
.end method
