defmodule Slackex.Channels do
  @moduledoc """
  Get info on your team's Slack channels,
  create or archive channels, invite users,
  set the topic and purpose, and mark a
  channel as read.
  """

  @doc """
  This method archives a channel.
  """
  def archive(channel, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel})    
    Slackex.request("channels.archive", params)
  end

  @doc """
  This method is used to create a channel.
  """
  def create(name, options \\ %{}) do
    params = options |> Map.merge(%{name: name})    
    Slackex.request("channels.create", params)
  end

  @doc """
  This method returns a portion of messages/events
  from the specified channel. To read the entire
  history for a channel, call the method with no
  latest or oldest arguments, and then continue paging
  using the instructions below.
  """
  def history(channel, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel})        
    Slackex.request("channels.history", params)
  end

  @doc """
  """
  def info(channel, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel})    
    Slackex.request("channels.info", params)
  end
  @doc """
  This method is used to invite a user to a channel.
  The calling user must be a member of the channel.
  """
  def invite(channel, user, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel, user: user})
    Slackex.request("channels.invite", params)
  end

  @doc """
  This method is used to join a channel. If the
  channel does not exist, it is created.
  """
  def join(name, options \\ %{}) do
    params = options |> Map.merge(%{name: name})
    Slackex.request("channels.join", params)
  end

  @doc """
  This method allows a user to remove another member
  from a team channel.
  """
  def kick(channel, user, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel, user: user})    
    Slackex.request("channels.kick", params)
  end

  @doc """
  This method is used to leave a channel.
  """
  def leave(channel, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel})
    Slackex.request("channels.leave", params)
  end

  @doc """
  This method returns a list of all channels
  in the team. This includes channels the
  caller is in, channels they are not currently
  in, and archived channels but does not include
  private channels. The number of (non-deactivated)
  members in each channel is also returned.

  To retrieve a list of private channels, use groups.list
  """
  def list(options \\ %{}) do
    Slackex.request("channels.list", options)
  end

  @doc """
  This method moves the read cursor in a channel.
  """
  def mark(channel, timestamp, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel, ts: timestamp})
    Slackex.request("channels.mark", params)
  end

  @doc """
  This method renames a team channel.

  The only people who can rename a channel are team
  admins, or the person that originally created the
  channel. Others will receive a "not_authorized"
  error.
  """
  def rename(channel, new_name, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel, name: new_name})
    Slackex.request("channels.rename", params)
  end

  @doc """
  This method is used to change the purpose of a
  channel. The calling user must be a member of
  the channel.
  """
  def set_purpose(channel, purpose, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel, purpose: purpose})
    Slackex.request("channels.setPurpose", params)
  end

  @doc """
  This method is used to change the topic of a
  channel. The calling user must be a member of
  the channel.
  """
  def set_topic(channel, topic, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel, topic: topic})
    Slackex.request("channels.setTopic", params)
  end

  @doc """
  This method unarchives a channel. The calling
  user is added to the channel.
  """
  def unarchive(channel, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel})
    Slackex.request("channels.unarchive", params)
  end
end
