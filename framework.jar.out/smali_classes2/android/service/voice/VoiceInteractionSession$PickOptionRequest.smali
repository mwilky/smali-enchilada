.class public final Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;
.super Landroid/service/voice/VoiceInteractionSession$Request;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PickOptionRequest"
.end annotation


# instance fields
.field final mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

.field final mPrompt:Landroid/app/VoiceInteractor$Prompt;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/service/voice/VoiceInteractionSession$Request;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/os/Bundle;)V

    iput-object p5, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    iput-object p6, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/voice/VoiceInteractionSession$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPrompt="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    if-eqz v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Options:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    aget-object v2, v2, v1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ":"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    mLabel="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    mIndex="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getIndex()I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {v2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->countSynonyms()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    Synonyms:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v0

    :goto_1
    invoke-virtual {v2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->countSynonyms()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "      #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getSynonymAt(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    mExtras="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getOptions()[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .locals 1

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/VoiceInteractor$Prompt;->getVoicePromptAt(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getVoicePrompt()Landroid/app/VoiceInteractor$Prompt;
    .locals 1

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    return-object v0
.end method

.method public sendIntermediatePickOptionResult([Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->sendPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    return-void
.end method

.method sendPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->finishRequest()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mCallback:Lcom/android/internal/app/IVoiceInteractorCallback;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/app/IVoiceInteractorCallback;->deliverPickOptionResult(Lcom/android/internal/app/IVoiceInteractorRequest;Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    nop

    :goto_2
    return-void
.end method

.method public sendPickOptionResult([Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->sendPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    return-void
.end method
