/*

This exmaple code, when placed in main.ms, handles the joining of players through the floodgate plugin. Various few plugin makers care to use the floodgate API to handle exceptions, so we'll handle it ourselves.

*/

# What the prefix you defined in floodgate is
assign(@floodgate_prefix, '[B]')

bind(player_join, null, null, @event) {
    @joined = @event['player']
    if(string_starts_with(@joined, @floodgate_prefix){
        # What command console should run when a player joins
        runas(~console, '/say ' . puuid(@joined) . ' joined via Floodgate!')
    }
}
